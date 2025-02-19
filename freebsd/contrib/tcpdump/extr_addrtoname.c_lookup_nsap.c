
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct enamemem {int* e_nsap; int e_addr0; int e_addr1; int e_addr2; struct enamemem* e_nxt; } ;
struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 int HASHNAMESIZE ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 struct enamemem* nsaptable ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;

__attribute__((used)) static inline struct enamemem *
lookup_nsap(netdissect_options *ndo, register const u_char *nsap,
     register u_int nsap_length)
{
 register u_int i, j, k;
 struct enamemem *tp;
 const u_char *ensap;

 if (nsap_length > 6) {
  ensap = nsap + nsap_length - 6;
  k = (ensap[0] << 8) | ensap[1];
  j = (ensap[2] << 8) | ensap[3];
  i = (ensap[4] << 8) | ensap[5];
 }
 else
  i = j = k = 0;

 tp = &nsaptable[(i ^ j) & (HASHNAMESIZE-1)];
 while (tp->e_nxt)
  if (nsap_length == tp->e_nsap[0] &&
      tp->e_addr0 == i &&
      tp->e_addr1 == j &&
      tp->e_addr2 == k &&
      memcmp((const char *)nsap,
   (char *)&(tp->e_nsap[1]), nsap_length) == 0)
   return tp;
  else
   tp = tp->e_nxt;
 tp->e_addr0 = i;
 tp->e_addr1 = j;
 tp->e_addr2 = k;
 tp->e_nsap = (u_char *)malloc(nsap_length + 1);
 if (tp->e_nsap == ((void*)0))
  (*ndo->ndo_error)(ndo, "lookup_nsap: malloc");
 tp->e_nsap[0] = (u_char)nsap_length;
 memcpy((char *)&tp->e_nsap[1], (const char *)nsap, nsap_length);
 tp->e_nxt = (struct enamemem *)calloc(1, sizeof(*tp));
 if (tp->e_nxt == ((void*)0))
  (*ndo->ndo_error)(ndo, "lookup_nsap: calloc");

 return tp;
}
