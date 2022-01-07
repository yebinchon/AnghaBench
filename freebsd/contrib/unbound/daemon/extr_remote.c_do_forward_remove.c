
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ anchors; struct iter_forwards* fwds; } ;
struct worker {TYPE_1__ env; } ;
struct iter_forwards {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int anchors_delete_insecure (scalar_t__,int ,int *) ;
 int forwards_delete_zone (struct iter_forwards*,int ,int *) ;
 int free (int *) ;
 int parse_fs_args (int *,char*,int **,int *,int*,int *) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_forward_remove(RES* ssl, struct worker* worker, char* args)
{
 struct iter_forwards* fwd = worker->env.fwds;
 int insecure = 0;
 uint8_t* nm = ((void*)0);
 if(!parse_fs_args(ssl, args, &nm, ((void*)0), &insecure, ((void*)0)))
  return;
 if(insecure && worker->env.anchors)
  anchors_delete_insecure(worker->env.anchors, LDNS_RR_CLASS_IN,
   nm);
 forwards_delete_zone(fwd, LDNS_RR_CLASS_IN, nm);
 free(nm);
 send_ok(ssl);
}
