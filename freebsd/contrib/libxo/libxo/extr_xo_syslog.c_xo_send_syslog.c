
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;


 scalar_t__ CONNPRIV ;
 scalar_t__ ENOBUFS ;
 int LOG_CONS ;
 int LOG_NDELAY ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 int REAL_VOID (int ) ;
 int STDERR_FILENO ;
 int _PATH_CONSOLE ;
 int close (int) ;
 scalar_t__ errno ;
 int open (int ,int,int ) ;
 scalar_t__ send (int ,char*,int,int ) ;
 char* strchr (char*,char) ;
 void* strlen (char*) ;
 int usleep (int) ;
 int writev (int,struct iovec*,int) ;
 int xo_connect_log () ;
 int xo_disconnect_log () ;
 int xo_logfile ;
 int xo_logstat ;
 int xo_logtag ;
 int xo_open_log_unlocked (int ,int,int ) ;
 int xo_opened ;
 scalar_t__ xo_status ;
 int xo_syslog_send (char*,char*,char*) ;

__attribute__((used)) static void
xo_send_syslog (char *full_msg, char *v0_hdr,
  char *text_only)
{
    if (xo_syslog_send) {
 xo_syslog_send(full_msg, v0_hdr, text_only);
 return;
    }

    int fd;
    int full_len = strlen(full_msg);


    if (v0_hdr) {
        struct iovec iov[3];
        struct iovec *v = iov;
        char newline[] = "\n";

        v->iov_base = v0_hdr;
        v->iov_len = strlen(v0_hdr);
        v += 1;
        v->iov_base = text_only;
        v->iov_len = strlen(text_only);
        v += 1;
        v->iov_base = newline;
        v->iov_len = 1;
        v += 1;
        REAL_VOID(writev(STDERR_FILENO, iov, 3));
    }


    if (!xo_opened)
        xo_open_log_unlocked(xo_logtag, xo_logstat | LOG_NDELAY, 0);
    xo_connect_log();
    if (send(xo_logfile, full_msg, full_len, 0) < 0) {
        if (errno != ENOBUFS) {




            xo_disconnect_log();
            xo_connect_log();
            if (send(xo_logfile, full_msg, full_len, 0) >= 0) {
                return;
            }




        }
        while (errno == ENOBUFS) {





            if (xo_status == CONNPRIV)
                break;
            usleep(1);
            if (send(xo_logfile, full_msg, full_len, 0) >= 0) {
                return;
            }
        }
    } else {
        return;
    }






    int flags = O_WRONLY | O_NONBLOCK;




    if (xo_logstat & LOG_CONS
        && (fd = open(_PATH_CONSOLE, flags, 0)) >= 0) {
        struct iovec iov[2];
        struct iovec *v = iov;
        char crnl[] = "\r\n";
 char *p;

        p = strchr(full_msg, '>') + 1;
        v->iov_base = p;
        v->iov_len = full_len - (p - full_msg);
        ++v;
        v->iov_base = crnl;
        v->iov_len = 2;
        REAL_VOID(writev(fd, iov, 2));
        (void) close(fd);
    }
}
