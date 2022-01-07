
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct enamemem {int e_addr0; int e_addr1; int e_addr2; struct enamemem* e_nxt; } ;
struct TYPE_4__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 int HASHNAMESIZE ;
 scalar_t__ calloc (int,int) ;
 struct enamemem* enametable ;
 int stub1 (TYPE_1__*,char*) ;

__attribute__((used)) static inline struct enamemem *
lookup_emem(netdissect_options *ndo, const u_char *ep)
{
 register u_int i, j, k;
 struct enamemem *tp;

 k = (ep[0] << 8) | ep[1];
 j = (ep[2] << 8) | ep[3];
 i = (ep[4] << 8) | ep[5];

 tp = &enametable[(i ^ j) & (HASHNAMESIZE-1)];
 while (tp->e_nxt)
  if (tp->e_addr0 == i &&
      tp->e_addr1 == j &&
      tp->e_addr2 == k)
   return tp;
  else
   tp = tp->e_nxt;
 tp->e_addr0 = i;
 tp->e_addr1 = j;
 tp->e_addr2 = k;
 tp->e_nxt = (struct enamemem *)calloc(1, sizeof(*tp));
 if (tp->e_nxt == ((void*)0))
  (*ndo->ndo_error)(ndo, "lookup_emem: calloc");

 return tp;
}
