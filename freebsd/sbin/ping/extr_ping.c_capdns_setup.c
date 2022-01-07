
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int AF_INET ;
 int cap_close (int *) ;
 scalar_t__ cap_dns_family_limit (int *,int*,int) ;
 scalar_t__ cap_dns_type_limit (int *,char const**,int) ;
 int * cap_init () ;
 int * cap_service_open (int *,char*) ;
 int err (int,char*) ;

__attribute__((used)) static cap_channel_t *
capdns_setup(void)
{
 cap_channel_t *capcas, *capdnsloc;




 capcas = cap_init();
 if (capcas == ((void*)0))
  err(1, "unable to create casper process");
 capdnsloc = cap_service_open(capcas, "system.dns");

 cap_close(capcas);
 if (capdnsloc == ((void*)0))
  err(1, "unable to open system.dns service");
 return (capdnsloc);
}
