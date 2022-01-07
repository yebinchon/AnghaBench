
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ anchors; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int anchors_add_insecure (scalar_t__,int ,int *) ;
 int delegpt_free_mlc (struct delegpt*) ;
 int forwards_add_zone (struct iter_forwards*,int ,struct delegpt*) ;
 int free (int *) ;
 int parse_fs_args (int *,char*,int **,struct delegpt**,int*,int *) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static void
do_forward_add(RES* ssl, struct worker* worker, char* args)
{
 struct iter_forwards* fwd = worker->env.fwds;
 int insecure = 0;
 uint8_t* nm = ((void*)0);
 struct delegpt* dp = ((void*)0);
 if(!parse_fs_args(ssl, args, &nm, &dp, &insecure, ((void*)0)))
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
 if(!forwards_add_zone(fwd, LDNS_RR_CLASS_IN, dp)) {
  (void)ssl_printf(ssl, "error out of memory\n");
  free(nm);
  return;
 }
 free(nm);
 send_ok(ssl);
}
