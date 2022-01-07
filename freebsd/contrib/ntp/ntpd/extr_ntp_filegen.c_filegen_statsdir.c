
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filegen_entry {TYPE_1__* filegen; struct filegen_entry* next; } ;
struct TYPE_2__ {int flag; int type; int fname; } ;


 int filegen_config (TYPE_1__*,int ,int ,int ,int ) ;
 struct filegen_entry* filegen_registry ;
 int statsdir ;

void
filegen_statsdir(void)
{
 struct filegen_entry *f;

 for (f = filegen_registry; f != ((void*)0); f = f->next)
  filegen_config(f->filegen, statsdir, f->filegen->fname,
          f->filegen->type, f->filegen->flag);
}
