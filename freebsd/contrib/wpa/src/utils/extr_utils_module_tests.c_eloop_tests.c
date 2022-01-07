
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int eloop_register_timeout (int ,int ,int ,int *,int *) ;
 int eloop_tests_run ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eloop_tests(void)
{
 wpa_printf(MSG_INFO, "schedule eloop tests to be run");






 eloop_register_timeout(0, 0, eloop_tests_run, ((void*)0), ((void*)0));

 return 0;
}
