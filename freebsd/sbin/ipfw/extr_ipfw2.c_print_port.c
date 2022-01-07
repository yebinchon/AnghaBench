
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* uint16_t ;
struct servent {char const* s_name; } ;
struct protoent {int * p_name; } ;
struct buf_pr {int dummy; } ;
struct TYPE_2__ {scalar_t__ do_resolv; } ;


 int IPPROTO_ETHERTYPE ;
 int bprintf (struct buf_pr*,char*,char const*) ;
 TYPE_1__ co ;
 int ether_types ;
 struct protoent* getprotobynumber (int) ;
 struct servent* getservbyport (int ,int *) ;
 int htons (char const*) ;
 char* match_value (int ,char const*) ;

__attribute__((used)) static void
print_port(struct buf_pr *bp, int proto, uint16_t port)
{

 if (proto == IPPROTO_ETHERTYPE) {
  char const *s;

  if (co.do_resolv && (s = match_value(ether_types, port)) )
   bprintf(bp, "%s", s);
  else
   bprintf(bp, "0x%04x", port);
 } else {
  struct servent *se = ((void*)0);
  if (co.do_resolv) {
   struct protoent *pe = getprotobynumber(proto);

   se = getservbyport(htons(port), pe ? pe->p_name : ((void*)0));
  }
  if (se)
   bprintf(bp, "%s", se->s_name);
  else
   bprintf(bp, "%d", port);
 }
}
