
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct qual {scalar_t__ dir; int proto; int addr; } ;
struct block {int dummy; } ;
struct TYPE_5__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;




 int Q_DEFAULT ;
 int Q_HOST ;
 int Q_LINK ;
 int bpf_error (TYPE_1__*,char*) ;
 struct block* gen_ahostop (TYPE_1__*,int const*,int) ;

struct block *
gen_acode(compiler_state_t *cstate, const u_char *eaddr, struct qual q)
{
 switch (cstate->linktype) {

 case 129:
 case 128:
  if ((q.addr == Q_HOST || q.addr == Q_DEFAULT) &&
      q.proto == Q_LINK)
   return (gen_ahostop(cstate, eaddr, (int)q.dir));
  else {
   bpf_error(cstate, "ARCnet address used in non-arc expression");

  }
  break;

 default:
  bpf_error(cstate, "aid supported only on ARCnet");

 }
}
