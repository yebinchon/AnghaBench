
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct qual {scalar_t__ addr; scalar_t__ proto; scalar_t__ dir; } ;
struct block {int dummy; } ;
struct TYPE_10__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
 scalar_t__ Q_DEFAULT ;
 scalar_t__ Q_HOST ;
 scalar_t__ Q_LINK ;
 int bpf_error (TYPE_1__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ehostop (TYPE_1__*,int const*,int) ;
 struct block* gen_fhostop (TYPE_1__*,int const*,int) ;
 struct block* gen_ipfchostop (TYPE_1__*,int const*,int) ;
 struct block* gen_prevlinkhdr_check (TYPE_1__*) ;
 struct block* gen_thostop (TYPE_1__*,int const*,int) ;
 struct block* gen_wlanhostop (TYPE_1__*,int const*,int) ;

struct block *
gen_ecode(compiler_state_t *cstate, const u_char *eaddr, struct qual q)
{
 struct block *b, *tmp;

 if ((q.addr == Q_HOST || q.addr == Q_DEFAULT) && q.proto == Q_LINK) {
  switch (cstate->linktype) {
  case 138:
  case 131:
  case 130:
   tmp = gen_prevlinkhdr_check(cstate);
   b = gen_ehostop(cstate, eaddr, (int)q.dir);
   if (tmp != ((void*)0))
    gen_and(tmp, b);
   return b;
  case 137:
   return gen_fhostop(cstate, eaddr, (int)q.dir);
  case 136:
   return gen_thostop(cstate, eaddr, (int)q.dir);
  case 135:
  case 128:
  case 133:
  case 134:
  case 129:
   return gen_wlanhostop(cstate, eaddr, (int)q.dir);
  case 132:
   return gen_ipfchostop(cstate, eaddr, (int)q.dir);
  default:
   bpf_error(cstate, "ethernet addresses supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
   break;
  }
 }
 bpf_error(cstate, "ethernet address used in non-ether expression");

}
