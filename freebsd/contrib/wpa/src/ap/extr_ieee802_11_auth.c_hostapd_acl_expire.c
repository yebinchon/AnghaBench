
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reltime {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int hostapd_acl_expire_cache (struct hostapd_data*,struct os_reltime*) ;
 int hostapd_acl_expire_queries (struct hostapd_data*,struct os_reltime*) ;
 int os_get_reltime (struct os_reltime*) ;

void hostapd_acl_expire(struct hostapd_data *hapd)
{
 struct os_reltime now;

 os_get_reltime(&now);
 hostapd_acl_expire_cache(hapd, &now);
 hostapd_acl_expire_queries(hapd, &now);
}
