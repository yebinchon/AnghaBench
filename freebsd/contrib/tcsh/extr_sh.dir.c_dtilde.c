
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {int di_name; struct directory* di_prev; } ;


 int STRNULL ;
 int dcanon (int ,int ) ;
 struct directory* dcwd ;
 struct directory dhead ;
 int dset (int ) ;

void
dtilde(void)
{
    struct directory *d = dcwd;

    do {
 if (d == &dhead)
     continue;
 d->di_name = dcanon(d->di_name, STRNULL);
    } while ((d = d->di_prev) != dcwd);

    dset(dcwd->di_name);
}
