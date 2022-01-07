
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gas_query_pending {int resp; int adv_proto; int req; int list; struct gas_query* gas; } ;
struct gas_query {TYPE_1__* work; } ;
struct TYPE_2__ {struct gas_query_pending* ctx; } ;


 int dl_list_del (int *) ;
 int os_free (struct gas_query_pending*) ;
 int radio_work_done (TYPE_1__*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void gas_query_free(struct gas_query_pending *query, int del_list)
{
 struct gas_query *gas = query->gas;

 if (del_list)
  dl_list_del(&query->list);

 if (gas->work && gas->work->ctx == query) {
  radio_work_done(gas->work);
  gas->work = ((void*)0);
 }

 wpabuf_free(query->req);
 wpabuf_free(query->adv_proto);
 wpabuf_free(query->resp);
 os_free(query);
}
