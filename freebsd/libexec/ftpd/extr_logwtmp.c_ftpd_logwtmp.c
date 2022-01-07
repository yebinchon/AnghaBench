
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut ;
struct utmpx {int ut_line; int ut_id; int ut_tv; int ut_pid; int ut_type; int ut_host; int ut_user; } ;
struct sockaddr {int sa_len; } ;


 int DEAD_PROCESS ;
 int USER_PROCESS ;
 int getpid () ;
 int gettimeofday (int *,int *) ;
 int memset (struct utmpx*,int ,int) ;
 int pututxline (struct utmpx*) ;
 int realhostname_sa (int ,int,struct sockaddr*,int ) ;
 int strncpy (int ,char*,int) ;

void
ftpd_logwtmp(char *id, char *user, struct sockaddr *addr)
{
 struct utmpx ut;

 memset(&ut, 0, sizeof(ut));

 if (user != ((void*)0)) {

  ut.ut_type = USER_PROCESS;
  (void)strncpy(ut.ut_user, user, sizeof(ut.ut_user));
  if (addr != ((void*)0))
   realhostname_sa(ut.ut_host, sizeof(ut.ut_host),
       addr, addr->sa_len);
 } else {

  ut.ut_type = DEAD_PROCESS;
 }

 ut.ut_pid = getpid();
 gettimeofday(&ut.ut_tv, ((void*)0));
 (void)strncpy(ut.ut_id, id, sizeof(ut.ut_id));
 (void)strncpy(ut.ut_line, "ftpd", sizeof(ut.ut_line));

 pututxline(&ut);
}
