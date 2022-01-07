
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nc_protos {char const* netid; int af; int sotype; } ;


 struct nc_protos* nc_protos ;

__attribute__((used)) static const char *
netidbytype(int af, int sotype)
{
 struct nc_protos *p;

 for (p = nc_protos; p->netid != ((void*)0); p++) {
  if (af != p->af || sotype != p->sotype)
   continue;
  return (p->netid);
 }
 return (((void*)0));
}
