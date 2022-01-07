
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {scalar_t__* vec; } ;
struct stat {int st_mode; int st_gid; int st_uid; } ;
typedef int path ;
typedef int jmp_buf_t ;
typedef char Char ;


 int G_ERROR ;
 int MAXPATHLEN ;
 int ReplaceFile (int ,char*,int *,int ,int *,int *) ;
 int SHOUT ;
 char* STRNULL ;
 char* const STRhistfile ;

 char* const STRhome ;
 int STRlock ;
 char* STRmaxint ;
 int STRmerge ;

 char* const STRsavehist ;
 int * STRtildothist ;
 char* Strsave (char*) ;
 char* Strspl (char*,int *) ;
 int TCSH_IGNORE (int ) ;
 int UNREFERENCED_PARAMETER (struct stat) ;
 struct varent* adrof (char* const) ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 int didfds ;
 int dohist (char**,int *) ;
 scalar_t__ dot_lock (char*,int) ;
 int dotlock_cleanup (char*) ;
 scalar_t__ eq (scalar_t__,int ) ;
 int fchmod (int,int ) ;
 int fchown (int,int ,int ) ;
 int getexit (int ) ;
 char* globone (char*,int ) ;
 int loadhist (char*,int) ;
 char* randsuf () ;
 int rename (char*,int ) ;
 int resexit (int ) ;
 scalar_t__ setexit () ;
 int short2str (char*) ;
 int stat (int ,struct stat*) ;
 char* strsave (int ) ;
 char* varval (char* const) ;
 int xclose (int) ;
 int xcreat (char*,int) ;
 int xfree (char*) ;
 int xsnprintf (char*,int,char*,char*,char*) ;

void
rechist(Char *fname, int ref)
{
    Char *snum, *rs;
    int fp, ftmp, oldidfds;
    struct varent *shist;
    char path[MAXPATHLEN];
    struct stat st;
    static Char *dumphist[] = {129, 128, 0, 0};

    if (fname == ((void*)0) && !ref)
 return;




    if (((snum = varval(STRsavehist)) == STRNULL) &&
 ((snum = varval(129)) == STRNULL))
 snum = STRmaxint;


    if (fname == ((void*)0)) {
 if ((fname = varval(STRhistfile)) == STRNULL)
     fname = Strspl(varval(STRhome), &STRtildothist[1]);
 else
     fname = Strsave(fname);
    }
    else
 fname = globone(fname, G_ERROR);
    cleanup_push(fname, xfree);
    oldidfds = didfds;
    didfds = 0;
    if ((shist = adrof(STRsavehist)) != ((void*)0) && shist->vec != ((void*)0)) {
 size_t i;
 int merge = 0, lock = 0;

 for (i = 1; shist->vec[i]; i++) {
     if (eq(shist->vec[i], STRmerge))
  merge++;
     if (eq(shist->vec[i], STRlock))
  lock++;
 }

 if (merge) {
     jmp_buf_t osetexit;
     if (lock) {

  char *lockpath = strsave(short2str(fname));
  cleanup_push(lockpath, xfree);

  if ((dot_lock(lockpath, 100) == 0))
      cleanup_push(lockpath, dotlock_cleanup);

     }
     getexit(osetexit);
     if (setexit())
  loadhist(fname, 1);
     resexit(osetexit);
 }
    }
    rs = randsuf();
    xsnprintf(path, sizeof(path), "%S.%S", fname, rs);
    xfree(rs);

    fp = xcreat(path, 0600);
    if (fp == -1) {
 didfds = oldidfds;
 cleanup_until(fname);
 return;
    }


    if (stat(short2str(fname), &st) != -1) {
 TCSH_IGNORE(fchown(fp, st.st_uid, st.st_gid));
 TCSH_IGNORE(fchmod(fp, st.st_mode));
    }



    ftmp = SHOUT;
    SHOUT = fp;
    dumphist[2] = snum;
    dohist(dumphist, ((void*)0));
    xclose(fp);
    SHOUT = ftmp;
    didfds = oldidfds;

    (void)rename(path, short2str(fname));



    cleanup_until(fname);
}
