
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int CHECK (int) ;
 int CHECKX (int ) ;
 int GETPWENT ;
 int GETPWENT_R ;
 int GETPWNAM ;
 int GETPWNAM_R ;
 int GETPWUID ;
 int GETPWUID_R ;
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
 int test_users (int *) ;

int
main(void)
{
 cap_channel_t *capcas, *cappwd;

 printf("1..188\n");
 fflush(stdout);

 capcas = cap_init();
 CHECKX(capcas != ((void*)0));

 cappwd = cap_service_open(capcas, "system.pwd");
 CHECKX(cappwd != ((void*)0));

 cap_close(capcas);



 CHECK(runtest_cmds(cappwd) == (GETPWENT | GETPWENT_R | GETPWNAM |
     GETPWNAM_R | GETPWUID | GETPWUID_R));

 test_cmds(cappwd);

 test_fields(cappwd);

 test_users(cappwd);

 cap_close(cappwd);

 exit(0);
}
