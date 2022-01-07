
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_table {int cnt; struct isoent** last; } ;
struct isoent {struct isoent* ptnext; } ;



__attribute__((used)) static inline void
path_table_add_entry(struct path_table *pathtbl, struct isoent *ent)
{
 ent->ptnext = ((void*)0);
 *pathtbl->last = ent;
 pathtbl->last = &(ent->ptnext);
 pathtbl->cnt ++;
}
