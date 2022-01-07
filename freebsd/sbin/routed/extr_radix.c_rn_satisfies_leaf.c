
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct radix_node {char* rn_key; char* rn_mask; } ;


 int min (int,int) ;
 char* rn_ones ;

__attribute__((used)) static int
rn_satisfies_leaf(char *trial,
    struct radix_node *leaf,
    int skip)
{
 char *cp = trial, *cp2 = leaf->rn_key, *cp3 = leaf->rn_mask;
 char *cplim;
 int length = min(*(u_char *)cp, *(u_char *)cp2);

 if (cp3 == ((void*)0))
  cp3 = rn_ones;
 else
  length = min(length, *(u_char *)cp3);
 cplim = cp + length; cp3 += skip; cp2 += skip;
 for (cp += skip; cp < cplim; cp++, cp2++, cp3++)
  if ((*cp ^ *cp2) & *cp3)
   return 0;
 return 1;
}
