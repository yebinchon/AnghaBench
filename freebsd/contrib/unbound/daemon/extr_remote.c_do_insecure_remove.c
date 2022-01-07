
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ anchors; } ;
struct worker {TYPE_1__ env; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int anchors_delete_insecure (scalar_t__,int ,int *) ;
 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_insecure_remove(RES* ssl, struct worker* worker, char* arg)
{
 size_t nmlen;
 int nmlabs;
 uint8_t* nm = ((void*)0);
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 if(worker->env.anchors)
  anchors_delete_insecure(worker->env.anchors,
   LDNS_RR_CLASS_IN, nm);
 free(nm);
 send_ok(ssl);
}
