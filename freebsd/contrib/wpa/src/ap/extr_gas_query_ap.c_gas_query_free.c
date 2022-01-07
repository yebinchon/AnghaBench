
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gas_query_pending {int resp; int adv_proto; int req; int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct gas_query_pending*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void gas_query_free(struct gas_query_pending *query, int del_list)
{
 if (del_list)
  dl_list_del(&query->list);

 wpabuf_free(query->req);
 wpabuf_free(query->adv_proto);
 wpabuf_free(query->resp);
 os_free(query);
}
