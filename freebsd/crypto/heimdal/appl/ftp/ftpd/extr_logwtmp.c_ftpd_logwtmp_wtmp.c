
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; int tv_sec; } ;
struct utmpx {int ut_syslen; void* ut_type; TYPE_1__ ut_tv; int ut_host; int ut_user; int ut_line; int ut_time; int ut_pid; int ut_name; } ;
struct utmp {int ut_syslen; void* ut_type; TYPE_1__ ut_tv; int ut_host; int ut_user; int ut_line; int ut_time; int ut_pid; int ut_name; } ;
struct timeval {int tv_usec; int tv_sec; } ;


 void* DEAD_PROCESS ;
 int O_APPEND ;
 int O_WRONLY ;
 void* USER_PROCESS ;
 int WTMPX_FILE ;
 int WTMP_FILE ;
 int getpid () ;
 int gettimeofday (struct timeval*,int ) ;
 int memset (struct utmpx*,int ,int) ;
 int open (int ,int,int ) ;
 int pututxline (struct utmpx*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;
 int time (int *) ;
 int write (int,struct utmpx*,int) ;

__attribute__((used)) static void
ftpd_logwtmp_wtmp(char *line, char *name, char *host)
{
    static int init = 0;
    static int fd;
    if(!init){






 init = 1;
    }
    if(fd >= 0) {






    }
}
