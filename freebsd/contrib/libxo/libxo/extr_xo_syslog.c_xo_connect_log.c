
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int saddr ;


 int AF_UNIX ;
 scalar_t__ CONNDEF ;
 scalar_t__ CONNPRIV ;
 scalar_t__ NOCONN ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int _PATH_LOG ;
 int _PATH_LOG_PRIV ;
 int _PATH_OLDLOG ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int socket (int ,int,int ) ;
 int strncpy (int ,int ,int) ;
 int xo_logfile ;
 scalar_t__ xo_status ;
 int xo_syslog_open () ;

__attribute__((used)) static void
xo_connect_log (void)
{
    if (xo_syslog_open) {
 xo_syslog_open();
 return;
    }

    struct sockaddr_un saddr;

    if (xo_logfile == -1) {
        int flags = SOCK_DGRAM;



        if ((xo_logfile = socket(AF_UNIX, flags, 0)) == -1)
            return;
    }
    if (xo_logfile != -1 && xo_status == NOCONN) {



        saddr.sun_family = AF_UNIX;
        if (xo_status == NOCONN) {
            (void) close(xo_logfile);
            xo_logfile = -1;
        }
    }
}
