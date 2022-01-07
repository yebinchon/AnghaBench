
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ anchors; int hints; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int anchors_add_insecure (scalar_t__,int ,int *) ;
 int anchors_delete_insecure (scalar_t__,int ,int *) ;
 int delegpt_free_mlc (struct delegpt*) ;
 int forwards_add_stub_hole (struct iter_forwards*,int ,int *) ;
 int forwards_delete_stub_hole (struct iter_forwards*,int ,int *) ;
 int free (int *) ;
 int hints_add_stub (int ,int ,struct delegpt*,int) ;
 int parse_fs_args (int *,char*,int **,struct delegpt**,int*,int*) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static void
do_stub_add(RES* ssl, struct worker* worker, char* args)
{
 struct iter_forwards* fwd = worker->env.fwds;
 int insecure = 0, prime = 0;
 uint8_t* nm = ((void*)0);
 struct delegpt* dp = ((void*)0);
 if(!parse_fs_args(ssl, args, &nm, &dp, &insecure, &prime))
  return;
 if(insecure && worker->env.anchors) {
  if(!anchors_add_insecure(worker->env.anchors, LDNS_RR_CLASS_IN,
   nm)) {
   (void)ssl_printf(ssl, "error out of memory\n");
   delegpt_free_mlc(dp);
   free(nm);
   return;
  }
 }
 if(!forwards_add_stub_hole(fwd, LDNS_RR_CLASS_IN, nm)) {
  if(insecure && worker->env.anchors)
   anchors_delete_insecure(worker->env.anchors,
    LDNS_RR_CLASS_IN, nm);
  (void)ssl_printf(ssl, "error out of memory\n");
  delegpt_free_mlc(dp);
  free(nm);
  return;
 }
 if(!hints_add_stub(worker->env.hints, LDNS_RR_CLASS_IN, dp, !prime)) {
  (void)ssl_printf(ssl, "error out of memory\n");
  forwards_delete_stub_hole(fwd, LDNS_RR_CLASS_IN, nm);
  if(insecure && worker->env.anchors)
   anchors_delete_insecure(worker->env.anchors,
    LDNS_RR_CLASS_IN, nm);
  free(nm);
  return;
 }
 free(nm);
 send_ok(ssl);
}
