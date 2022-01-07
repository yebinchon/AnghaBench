
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_query_result {scalar_t__ status; int p_result_madw; } ;
struct sa_handle {int dummy; } ;
struct query_params {int cpi; } ;
typedef int ib_class_port_info_t ;


 int CLASS_PORT_INFO ;
 int EIO ;
 int IB_MAD_METHOD_GET ;
 scalar_t__ IB_SA_MAD_STATUS_SUCCESS ;
 int fprintf (int ,char*,char*) ;
 int ibd_sakey ;
 int memcpy (int *,int *,int) ;
 int sa_free_result_mad (struct sa_query_result*) ;
 int * sa_get_query_rec (int ,int ) ;
 int sa_query (struct sa_handle*,int ,int ,int ,int ,int ,int *,int ,struct sa_query_result*) ;
 int sa_report_err (scalar_t__) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int query_sa_cpi(struct sa_handle *h, struct query_params *query_params)
{
 ib_class_port_info_t *cpi;
 struct sa_query_result result;
 int ret = sa_query(h, IB_MAD_METHOD_GET, CLASS_PORT_INFO, 0, 0,
         ibd_sakey, ((void*)0), 0, &result);
 if (ret) {
  fprintf(stderr, "Query SA failed: %s\n", strerror(ret));
  return ret;
 }

 if (result.status != IB_SA_MAD_STATUS_SUCCESS) {
  sa_report_err(result.status);
  ret = EIO;
  goto Exit;
 }
 cpi = sa_get_query_rec(result.p_result_madw, 0);
 memcpy(&query_params->cpi, cpi, sizeof(query_params->cpi));
Exit:
 sa_free_result_mad(&result);
 return (0);
}
