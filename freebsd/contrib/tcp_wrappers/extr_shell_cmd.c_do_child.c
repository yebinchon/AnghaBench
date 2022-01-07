
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int SIG_IGN ;
 int _exit (int ) ;
 int close (int) ;
 int dup (int ) ;
 int execl (char*,char*,char*,char*,char*) ;
 scalar_t__ open (char*,int) ;
 int signal (int ,int ) ;
 int tcpd_warn (char*) ;

__attribute__((used)) static void do_child(char *command)
{
    char *error;
    int tmp_fd;






    signal(SIGHUP, SIG_IGN);



    for (tmp_fd = 0; tmp_fd < 3; tmp_fd++)
 (void) close(tmp_fd);
    if (open("/dev/null", 2) != 0) {
 error = "open /dev/null: %m";
    } else if (dup(0) != 1 || dup(0) != 2) {
 error = "dup: %m";
    } else {
 (void) execl("/bin/sh", "sh", "-c", command, (char *) 0);
 error = "execl /bin/sh: %m";
    }



    tcpd_warn(error);
    _exit(0);
}
