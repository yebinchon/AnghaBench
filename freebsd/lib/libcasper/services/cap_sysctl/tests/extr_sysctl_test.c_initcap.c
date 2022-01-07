
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int ATF_REQUIRE (int ) ;
 int SYSCTL0_FILE ;
 int SYSCTL0_NAME ;
 int SYSCTL1_FILE ;
 int SYSCTL1_NAME ;
 int cap_close (int *) ;
 int * cap_init () ;
 int * cap_service_open (int *,char*) ;
 int save_int_sysctl (int ,int ) ;

__attribute__((used)) static cap_channel_t *
initcap(void)
{
 cap_channel_t *capcas, *capsysctl;

 save_int_sysctl(SYSCTL0_NAME, SYSCTL0_FILE);
 save_int_sysctl(SYSCTL1_NAME, SYSCTL1_FILE);

 capcas = cap_init();
 ATF_REQUIRE(capcas != ((void*)0));

 capsysctl = cap_service_open(capcas, "system.sysctl");
 ATF_REQUIRE(capsysctl != ((void*)0));

 cap_close(capcas);

 return (capsysctl);
}
