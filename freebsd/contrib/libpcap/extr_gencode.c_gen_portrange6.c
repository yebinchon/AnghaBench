
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int ETHERTYPE_IPV6 ;




 int abort () ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_linktype (int *,int ) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_portrangeop6 (int *,int,int,int const,int) ;

__attribute__((used)) static struct block *
gen_portrange6(compiler_state_t *cstate, int port1, int port2, int ip_proto,
    int dir)
{
 struct block *b0, *b1, *tmp;


 b0 = gen_linktype(cstate, ETHERTYPE_IPV6);

 switch (ip_proto) {
 case 129:
 case 130:
 case 131:
  b1 = gen_portrangeop6(cstate, port1, port2, ip_proto, dir);
  break;

 case 128:
  tmp = gen_portrangeop6(cstate, port1, port2, 130, dir);
  b1 = gen_portrangeop6(cstate, port1, port2, 129, dir);
  gen_or(tmp, b1);
  tmp = gen_portrangeop6(cstate, port1, port2, 131, dir);
  gen_or(tmp, b1);
  break;

 default:
  abort();
 }
 gen_and(b0, b1);
 return b1;
}
