
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {scalar_t__** vec; } ;
struct directory {struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; int di_name; } ;
typedef scalar_t__ Char ;


 int STRdirstack ;
 int Strsave (scalar_t__*) ;
 struct varent* adrof (int ) ;
 struct directory* dcwd ;
 int dfree (struct directory*) ;
 int dgetstack () ;
 struct directory dhead ;
 struct directory* xcalloc (int,int) ;

void
dsetstack(void)
{
    Char **cp;
    struct varent *vp;
    struct directory *dn, *dp;

    if ((vp = adrof(STRdirstack)) == ((void*)0) || vp->vec == ((void*)0))
 return;


    while ((dn = dhead.di_prev) != &dhead) {
 dn->di_next->di_prev = dn->di_prev;
 dn->di_prev->di_next = dn->di_next;
 if (dn != dcwd)
     dfree(dn);
    }


    dhead.di_prev = dhead.di_next = dcwd;
    dcwd->di_next = dcwd->di_prev = &dhead;


    for (cp = vp->vec; cp && *cp && **cp; cp++) {
 dp = xcalloc(sizeof(struct directory), 1);
 dp->di_name = Strsave(*cp);
 dp->di_count = 0;
 dp->di_prev = dcwd;
 dp->di_next = dcwd->di_next;
 dcwd->di_next = dp;
 dp->di_next->di_prev = dp;
    }
    dgetstack();
}
