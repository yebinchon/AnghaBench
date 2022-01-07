
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOCONN ;
 int close (int) ;
 int xo_logfile ;
 int xo_status ;
 int xo_syslog_close () ;

__attribute__((used)) static void
xo_disconnect_log (void)
{
    if (xo_syslog_close) {
 xo_syslog_close();
 return;
    }






    if (xo_logfile != -1) {
        close(xo_logfile);
        xo_logfile = -1;
    }
    xo_status = NOCONN;
}
