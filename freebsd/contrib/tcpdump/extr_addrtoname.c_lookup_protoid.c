
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct protoidmem {int p_oui; int p_proto; struct protoidmem* p_nxt; } ;
struct TYPE_4__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 int HASHNAMESIZE ;
 scalar_t__ calloc (int,int) ;
 struct protoidmem* protoidtable ;
 int stub1 (TYPE_1__*,char*) ;

__attribute__((used)) static inline struct protoidmem *
lookup_protoid(netdissect_options *ndo, const u_char *pi)
{
 register u_int i, j;
 struct protoidmem *tp;


 i = (((pi[0] << 8) + pi[1]) << 8) + pi[2];
 j = (pi[3] << 8) + pi[4];


 tp = &protoidtable[(i ^ j) & (HASHNAMESIZE-1)];
 while (tp->p_nxt)
  if (tp->p_oui == i && tp->p_proto == j)
   return tp;
  else
   tp = tp->p_nxt;
 tp->p_oui = i;
 tp->p_proto = j;
 tp->p_nxt = (struct protoidmem *)calloc(1, sizeof(*tp));
 if (tp->p_nxt == ((void*)0))
  (*ndo->ndo_error)(ndo, "lookup_protoid: calloc");

 return tp;
}
