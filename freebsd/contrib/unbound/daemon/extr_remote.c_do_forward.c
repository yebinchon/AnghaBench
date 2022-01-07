
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mesh; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int forwards_add_zone (struct iter_forwards*,int ,struct delegpt*) ;
 int forwards_delete_zone (struct iter_forwards*,int ,int *) ;
 int mesh_delete_all (int ) ;
 struct delegpt* parse_delegpt (int *,char*,int *,int ) ;
 int print_root_fwds (int *,struct iter_forwards*,int *) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
do_forward(RES* ssl, struct worker* worker, char* args)
{
 struct iter_forwards* fwd = worker->env.fwds;
 uint8_t* root = (uint8_t*)"\000";
 if(!fwd) {
  (void)ssl_printf(ssl, "error: structure not allocated\n");
  return;
 }
 if(args == ((void*)0) || args[0] == 0) {
  (void)print_root_fwds(ssl, fwd, root);
  return;
 }



 mesh_delete_all(worker->env.mesh);
 if(strcmp(args, "off") == 0) {
  forwards_delete_zone(fwd, LDNS_RR_CLASS_IN, root);
 } else {
  struct delegpt* dp;
  if(!(dp = parse_delegpt(ssl, args, root, 0)))
   return;
  if(!forwards_add_zone(fwd, LDNS_RR_CLASS_IN, dp)) {
   (void)ssl_printf(ssl, "error out of memory\n");
   return;
  }
 }
 send_ok(ssl);
}
