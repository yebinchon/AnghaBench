
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_kdc_configuration ;
typedef int krb5_context ;


 int * announce_config ;
 int announce_context ;
 int create_dns_sd () ;
 int dispatch_queue_create (char*,int *) ;
 int errx (int,char*) ;
 int g_queue ;
 int g_store ;
 int register_notification () ;

void
bonjour_announce(krb5_context context, krb5_kdc_configuration *config)
{
}
