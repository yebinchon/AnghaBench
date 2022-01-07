
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nentries; int idlist; } ;


 int TAILQ_INIT (int *) ;
 TYPE_1__* idtab ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static void
idtab_init(void)
{
 idtab = xcalloc(1, sizeof(*idtab));
 TAILQ_INIT(&idtab->idlist);
 idtab->nentries = 0;
}
