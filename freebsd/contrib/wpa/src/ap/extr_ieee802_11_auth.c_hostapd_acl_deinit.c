
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {struct hostapd_acl_query_data* acl_queries; int * acl_cache; } ;
struct hostapd_acl_query_data {struct hostapd_acl_query_data* next; } ;


 int hostapd_acl_cache_free (int *) ;
 int hostapd_acl_query_free (struct hostapd_acl_query_data*) ;

void hostapd_acl_deinit(struct hostapd_data *hapd)
{
 struct hostapd_acl_query_data *query, *prev;


 hostapd_acl_cache_free(hapd->acl_cache);
 hapd->acl_cache = ((void*)0);


 query = hapd->acl_queries;
 hapd->acl_queries = ((void*)0);
 while (query) {
  prev = query;
  query = query->next;
  hostapd_acl_query_free(prev);
 }
}
