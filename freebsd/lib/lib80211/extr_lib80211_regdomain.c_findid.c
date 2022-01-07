
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regdata {struct ident* ident; } ;
struct ident {void* p; int * id; scalar_t__ type; } ;


 scalar_t__ strcasecmp (int *,void const*) ;

__attribute__((used)) static void *
findid(struct regdata *rdp, const void *id, int type)
{
 struct ident *ip;

 for (ip = rdp->ident; ip->id != ((void*)0); ip++)
  if ((int) ip->type == type && strcasecmp(ip->id, id) == 0)
   return ip->p;
 return ((void*)0);
}
