
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fileusage {int fu_id; struct fileusage* fu_next; } ;


 int FUHASH ;
 struct fileusage*** fuhead ;

struct fileusage *
lookup(u_long id, int type)
{
 struct fileusage *fup;

 for (fup = fuhead[type][id & (FUHASH-1)]; fup != ((void*)0); fup = fup->fu_next)
  if (fup->fu_id == id)
   return (fup);
 return (((void*)0));
}
