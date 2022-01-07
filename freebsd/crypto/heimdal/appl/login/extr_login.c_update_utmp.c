
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int f_flag ;
 int printf (char*) ;
 int utmp_login (char*,char const*,char const*) ;
 scalar_t__ utmpx_login (char*,char const*,char const*) ;

__attribute__((used)) static void
update_utmp(const char *username, const char *hostname,
     char *tty, char *ttyn)
{



    if (utmpx_login(tty, username, hostname) != 0 && !f_flag) {
 printf("No utmpx entry.  You must exec \"login\" from the "
        "lowest level shell.\n");
 exit(1);
    }
    utmp_login(ttyn, username, hostname);
}
