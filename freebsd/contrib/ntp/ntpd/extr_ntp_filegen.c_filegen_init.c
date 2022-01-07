
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; int type; scalar_t__ id_hi; scalar_t__ id_lo; void* fname; void* dir; int * fp; } ;
typedef TYPE_1__ FILEGEN ;


 int FGEN_FLAG_LINK ;
 int FILEGEN_DAY ;
 void* estrdup (char const*) ;

__attribute__((used)) static void
filegen_init(
 const char * dir,
 const char * fname,
 FILEGEN * fgp
 )
{
 fgp->fp = ((void*)0);
 fgp->dir = estrdup(dir);
 fgp->fname = estrdup(fname);
 fgp->id_lo = 0;
 fgp->id_hi = 0;
 fgp->type = FILEGEN_DAY;
 fgp->flag = FGEN_FLAG_LINK;
}
