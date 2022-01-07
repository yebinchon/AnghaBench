
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sa_query_result {scalar_t__ status; } ;
struct sa_handle {int dummy; } ;
typedef int ib_net64_t ;


 int EIO ;
 int IB_MAD_METHOD_GET_TABLE ;
 scalar_t__ IB_SA_MAD_STATUS_SUCCESS ;
 int cl_ntoh64 (int ) ;
 int fprintf (int ,char*,char*) ;
 int ibd_sakey ;
 int sa_query (struct sa_handle*,int ,int ,int ,int ,int ,void*,size_t,struct sa_query_result*) ;
 int sa_report_err (scalar_t__) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int get_any_records(struct sa_handle * h,
      uint16_t attr_id, uint32_t attr_mod,
      ib_net64_t comp_mask, void *attr,
      size_t attr_size,
      struct sa_query_result *result)
{
 int ret = sa_query(h, IB_MAD_METHOD_GET_TABLE, attr_id, attr_mod,
      cl_ntoh64(comp_mask), ibd_sakey, attr, attr_size, result);
 if (ret) {
  fprintf(stderr, "Query SA failed: %s\n", strerror(ret));
  return ret;
 }

 if (result->status != IB_SA_MAD_STATUS_SUCCESS) {
  sa_report_err(result->status);
  return EIO;
 }

 return ret;
}
