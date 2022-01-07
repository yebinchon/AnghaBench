
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_ino; int st_dev; } ;
struct directory {scalar_t__* di_name; TYPE_1__* di_prev; TYPE_1__* di_next; scalar_t__ di_count; } ;
struct TYPE_2__ {struct directory* di_prev; struct directory* di_next; } ;
typedef scalar_t__ Char ;


 scalar_t__ DEV_DEV_COMPARE (int ,int ) ;
 scalar_t__* SAVE (char*) ;
 int STRNULL ;
 int STRdirstack ;
 scalar_t__* Strsave (scalar_t__*) ;
 int VAR_NOGLOB ;
 int VAR_READWRITE ;
 scalar_t__* agetcwd () ;
 int chdir (char*) ;
 int cleanup_ignore (scalar_t__*) ;
 int cleanup_push (scalar_t__*,int ) ;
 int cleanup_until (scalar_t__*) ;
 scalar_t__* dcanon (scalar_t__*,int ) ;
 TYPE_1__ dhead ;
 int dnewcwd (struct directory*,int ) ;
 int dstart (char*) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ printd ;
 int progname ;
 int setcopy (int ,scalar_t__*,int) ;
 char* short2str (scalar_t__*) ;
 int stat (char*,struct stat*) ;
 int strerror (int ) ;
 struct directory* xcalloc (int,int) ;
 int xexit (int) ;
 int xfree ;
 int xprintf (char*,int ,int ) ;

void
dinit(Char *hp)
{
    Char *cp, *tcp;
    struct directory *dp;


    tcp = agetcwd();
    if (tcp == ((void*)0)) {
 xprintf("%s: %s\n", progname, strerror(errno));
 if (hp && *hp) {
     char *xcp = short2str(hp);
     dstart(xcp);
     if (chdir(xcp) == -1)
  cp = ((void*)0);
     else
  cp = Strsave(hp);
 }
 else
     cp = ((void*)0);
 if (cp == ((void*)0)) {
     dstart("/");
     if (chdir("/") == -1)

  xexit(1);
     cp = SAVE("/");
 }
    }
    else {
 cleanup_push(tcp, xfree);
 cp = dcanon(tcp, STRNULL);
 cleanup_ignore(tcp);
 cleanup_until(tcp);

    }

    dp = xcalloc(sizeof(struct directory), 1);
    dp->di_name = cp;
    dp->di_count = 0;
    dhead.di_next = dhead.di_prev = dp;
    dp->di_next = dp->di_prev = &dhead;
    printd = 0;
    dnewcwd(dp, 0);
    setcopy(STRdirstack, dp->di_name, VAR_READWRITE|VAR_NOGLOB);
}
