
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sodest; int date; int name; int title; int arch; int os; int vol; int msec; int * first; } ;
struct roff_man {TYPE_1__ meta; } ;


 int free (int ) ;
 int roff_node_delete (struct roff_man*,int *) ;

__attribute__((used)) static void
roff_man_free1(struct roff_man *man)
{
 if (man->meta.first != ((void*)0))
  roff_node_delete(man, man->meta.first);
 free(man->meta.msec);
 free(man->meta.vol);
 free(man->meta.os);
 free(man->meta.arch);
 free(man->meta.title);
 free(man->meta.name);
 free(man->meta.date);
 free(man->meta.sodest);
}
