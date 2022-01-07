
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int CHECK (int) ;
 int CHECKX (int ) ;
 int GETGRENT ;
 int GETGRENT_R ;
 int GETGRGID ;
 int GETGRGID_R ;
 int GETGRNAM ;
 int GETGRNAM_R ;
 int SETGRENT ;
 int cap_close (int *) ;
 int * cap_init () ;
 int * cap_service_open (int *,char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 int printf (char*) ;
 int runtest_cmds (int *) ;
 int stdout ;
 int test_cmds (int *) ;
 int test_fields (int *) ;
 int test_groups (int *) ;

int
main(void)
{
 cap_channel_t *capcas, *capgrp;

 printf("1..199\n");
 fflush(stdout);

 capcas = cap_init();
 CHECKX(capcas != ((void*)0));

 capgrp = cap_service_open(capcas, "system.grp");
 CHECKX(capgrp != ((void*)0));

 cap_close(capcas);



 CHECK(runtest_cmds(capgrp) == (SETGRENT | GETGRENT | GETGRENT_R |
     GETGRNAM | GETGRNAM_R | GETGRGID | GETGRGID_R));

 test_cmds(capgrp);

 test_fields(capgrp);

 test_groups(capgrp);

 cap_close(capgrp);

 exit(0);
}
