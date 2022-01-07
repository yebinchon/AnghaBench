
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sa_query_result {int p_result_madw; } ;
struct sa_handle {int dummy; } ;
typedef int pr ;
typedef int ibmad_gid_t ;
struct TYPE_5__ {int dgid; int dlid; int slid; } ;
typedef TYPE_1__ ib_path_rec_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_VAL (int,int,int ,int ,int ,int ) ;
 int DLID ;
 int IB_SA_ATTR_PATHRECORD ;
 int PR ;
 int SLID ;
 int get_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,struct sa_query_result*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sa_free_result_mad (struct sa_query_result*) ;
 TYPE_1__* sa_get_query_rec (int ,int ) ;

__attribute__((used)) static int sm_pr_query(struct sa_handle * h, ibmad_gid_t *gid, int srclid, int destlid) {

 ib_path_rec_t pr;
 ib_net64_t comp_mask = 0;
 struct sa_query_result result;
 int ret;
 ib_path_rec_t *p_pr;

 memset(&pr, 0, sizeof(pr));
 CHECK_AND_SET_VAL(srclid, 16, 0, pr.slid, PR, SLID);
 CHECK_AND_SET_VAL(destlid, 16, 0, pr.dlid, PR, DLID);

 ret = get_any_records(h, IB_SA_ATTR_PATHRECORD, 0, comp_mask, &pr, sizeof(pr), &result);
 if (ret)
  return ret;

 p_pr = sa_get_query_rec(result.p_result_madw, 0);
 memcpy(gid, &p_pr->dgid, 16);
 sa_free_result_mad(&result);
 return ret;
}
