
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmp {int ut_id; int ut_pid; int ut_type; int ut_host; int ut_addr; int ut_user; int ut_name; int ut_line; int ut_time; } ;
struct hostent {int * h_addr_list; } ;


 int USER_PROCESS ;
 char* clean_ttyname (char*) ;
 struct hostent* gethostbyname (char const*) ;
 int getpid () ;
 char const* make_id (char*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct utmp*,int ,int) ;
 int shrink_hostname (char const*,int ,int) ;
 int strncpy (int ,char const*,int) ;
 int time (int *) ;

void
prepare_utmp (struct utmp *utmp, char *tty,
       const char *username, const char *hostname)
{
    char *ttyx = clean_ttyname (tty);

    memset(utmp, 0, sizeof(*utmp));
    utmp->ut_time = time(((void*)0));
    strncpy(utmp->ut_line, ttyx, sizeof(utmp->ut_line));
    strncpy(utmp->ut_name, username, sizeof(utmp->ut_name));
}
