
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int RETSIGTYPE ;


 int O_WRONLY ;
 int _exit (int) ;
 int close (int) ;
 int open (char*,int ,int) ;
 int strlen (char*) ;
 char* testname ;
 int write (int,char*,int) ;

__attribute__((used)) static RETSIGTYPE
segv_handler(int sig)
{
    int fd;
    char msg[] = "SIGSEGV i current test: ";

    fd = open("/dev/stdout", O_WRONLY, 0600);
    if (fd >= 0) {
 (void)write(fd, msg, sizeof(msg) - 1);
 (void)write(fd, testname, strlen(testname));
 (void)write(fd, "\n", 1);
 close(fd);
    }
    _exit(1);
}
