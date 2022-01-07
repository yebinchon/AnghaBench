
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {int di_name; struct directory* di_prev; } ;
typedef int Char ;


 int STRdirstack ;
 int * Strsave (int ) ;
 int VAR_READWRITE ;
 int * adrof (int ) ;
 int blk_cleanup ;
 int cleanup_ignore (int **) ;
 int cleanup_push (int **,int ) ;
 int cleanup_until (int **) ;
 struct directory dhead ;
 int setq (int ,int **,int *,int ) ;
 int shvhed ;
 int ** xmalloc (int) ;

__attribute__((used)) static void
dgetstack(void)
{
    int i = 0;
    Char **dblk, **dbp;
    struct directory *dn;

    if (adrof(STRdirstack) == ((void*)0))
     return;

    for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev, i++)
 continue;
    dbp = dblk = xmalloc((i + 1) * sizeof(Char *));
    for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev, dbp++)
  *dbp = Strsave(dn->di_name);
    *dbp = ((void*)0);
    cleanup_push(dblk, blk_cleanup);
    setq(STRdirstack, dblk, &shvhed, VAR_READWRITE);
    cleanup_ignore(dblk);
    cleanup_until(dblk);
}
