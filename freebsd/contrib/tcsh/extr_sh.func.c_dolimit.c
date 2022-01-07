
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limits {scalar_t__ limconst; } ;
struct command {int dummy; } ;
typedef int RLIM_TYPE ;
typedef int Char ;


 int ERR_SILENT ;
 int STRmh ;
 int USE (struct command*) ;
 scalar_t__ eq (int *,int ) ;
 struct limits* findlim (int *) ;
 int getval (struct limits*,int **) ;
 struct limits* limits ;
 int plim (struct limits*,int) ;
 scalar_t__ setlim (struct limits*,int,int ) ;
 int stderror (int ) ;

void
dolimit(Char **v, struct command *c)
{
    struct limits *lp;
    RLIM_TYPE limit;
    int hard = 0;

    USE(c);
    v++;
    if (*v && eq(*v, STRmh)) {
 hard = 1;
 v++;
    }
    if (*v == 0) {
 for (lp = limits; lp->limconst >= 0; lp++)
     plim(lp, hard);
 return;
    }
    lp = findlim(v[0]);
    if (v[1] == 0) {
 plim(lp, hard);
 return;
    }
    limit = getval(lp, v + 1);
    if (setlim(lp, hard, limit) < 0)
 stderror(ERR_SILENT);
}
