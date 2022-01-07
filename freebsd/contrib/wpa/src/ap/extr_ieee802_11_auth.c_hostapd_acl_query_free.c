
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_acl_query_data {struct hostapd_acl_query_data* auth_msg; } ;


 int os_free (struct hostapd_acl_query_data*) ;

__attribute__((used)) static void hostapd_acl_query_free(struct hostapd_acl_query_data *query)
{
 if (query == ((void*)0))
  return;
 os_free(query->auth_msg);
 os_free(query);
}
