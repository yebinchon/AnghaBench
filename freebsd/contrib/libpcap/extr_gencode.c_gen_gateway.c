
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct block {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; struct addrinfo* ai_next; } ;
struct TYPE_15__ {int linktype; } ;
typedef TYPE_3__ compiler_state_t ;
struct TYPE_13__ {int sa_family; } ;


 int AF_INET ;
 int Q_HOST ;

 int Q_OR ;

 int bpf_error (TYPE_3__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ehostop (TYPE_3__*,int const*,int ) ;
 struct block* gen_fhostop (TYPE_3__*,int const*,int ) ;
 struct block* gen_host (TYPE_3__*,int ,int,int,int ,int ) ;
 struct block* gen_ipfchostop (TYPE_3__*,int const*,int ) ;
 int gen_not (struct block*) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_prevlinkhdr_check (TYPE_3__*) ;
 struct block* gen_thostop (TYPE_3__*,int const*,int ) ;
 struct block* gen_wlanhostop (TYPE_3__*,int const*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static struct block *
gen_gateway(compiler_state_t *cstate, const u_char *eaddr,
    struct addrinfo *alist, int proto, int dir)
{
 struct block *b0, *b1, *tmp;
 struct addrinfo *ai;
 struct sockaddr_in *sin;

 if (dir != 0)
  bpf_error(cstate, "direction applied to 'gateway'");

 switch (proto) {
 case 130:
 case 129:
 case 131:
 case 128:
  switch (cstate->linktype) {
  case 143:
  case 136:
  case 135:
   b1 = gen_prevlinkhdr_check(cstate);
   b0 = gen_ehostop(cstate, eaddr, Q_OR);
   if (b1 != ((void*)0))
    gen_and(b1, b0);
   break;
  case 142:
   b0 = gen_fhostop(cstate, eaddr, Q_OR);
   break;
  case 141:
   b0 = gen_thostop(cstate, eaddr, Q_OR);
   break;
  case 140:
  case 133:
  case 138:
  case 139:
  case 134:
   b0 = gen_wlanhostop(cstate, eaddr, Q_OR);
   break;
  case 132:





   bpf_error(cstate,
       "'gateway' supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
   break;
  case 137:
   b0 = gen_ipfchostop(cstate, eaddr, Q_OR);
   break;
  default:
   bpf_error(cstate,
       "'gateway' supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
  }
  b1 = ((void*)0);
  for (ai = alist; ai != ((void*)0); ai = ai->ai_next) {



   if (ai->ai_addr != ((void*)0)) {



    if (ai->ai_addr->sa_family == AF_INET) {



     sin = (struct sockaddr_in *)ai->ai_addr;
     tmp = gen_host(cstate,
         ntohl(sin->sin_addr.s_addr),
         0xffffffff, proto, Q_OR, Q_HOST);



     if (b1 == ((void*)0)) {



      b1 = tmp;
     } else {





      gen_or(b1, tmp);
      b1 = tmp;
     }
    }
   }
  }
  if (b1 == ((void*)0)) {



   return (((void*)0));
  }
  gen_not(b1);
  gen_and(b0, b1);
  return b1;
 }
 bpf_error(cstate, "illegal modifier of 'gateway'");

}
