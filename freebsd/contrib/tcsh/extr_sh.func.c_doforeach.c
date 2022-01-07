
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct whyle {char** w_fe; char** w_fe0; TYPE_1__ w_end; struct whyle* w_next; int w_fename; int w_start; } ;
struct command {int dummy; } ;
typedef char Char ;


 int ERR_NAME ;
 int ERR_NOMATCH ;
 int ERR_NOPAREN ;
 int ERR_VARALNUM ;
 int ERR_VARBEGIN ;
 int Strsave (char*) ;
 int TCSH_F_SEEK ;
 int TC_FOREACH ;
 int USE (struct command*) ;
 scalar_t__ alnum (char) ;
 int blklen (char**) ;
 int btell (int *) ;
 int doagain () ;
 char** globall (char**,int) ;
 scalar_t__ intty ;
 int letter (char) ;
 int noexec ;
 int preread () ;
 char** saveblk (char**) ;
 int stderror (int) ;
 char* strip (char*) ;
 int tglob (char**) ;
 int trim (char**) ;
 struct whyle* whyles ;
 struct whyle* xcalloc (int,int) ;
 int zlast ;

void
doforeach(Char **v, struct command *c)
{
    Char *cp, *sp;
    struct whyle *nwp;
    int gflag;

    USE(c);
    v++;
    cp = sp = strip(*v);
    if (!letter(*cp))
 stderror(ERR_NAME | ERR_VARBEGIN);
    do {
 cp++;
    } while (alnum(*cp));
    if (*cp != '\0')
 stderror(ERR_NAME | ERR_VARALNUM);
    cp = *v++;
    if (v[0][0] != '(' || v[blklen(v) - 1][0] != ')')
 stderror(ERR_NAME | ERR_NOPAREN);
    v++;
    gflag = tglob(v);
    if (gflag) {
 v = globall(v, gflag);
 if (v == 0 && !noexec)
     stderror(ERR_NAME | ERR_NOMATCH);
    }
    else {
 v = saveblk(v);
 trim(v);
    }
    nwp = xcalloc(1, sizeof *nwp);
    nwp->w_fe = nwp->w_fe0 = v;
    btell(&nwp->w_start);
    nwp->w_fename = Strsave(cp);
    nwp->w_next = whyles;
    nwp->w_end.type = TCSH_F_SEEK;
    whyles = nwp;



    zlast = TC_FOREACH;
    if (intty)
 preread();
    if (!noexec)
 doagain();
}
