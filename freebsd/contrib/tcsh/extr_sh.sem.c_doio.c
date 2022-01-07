
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {unsigned long t_dflg; scalar_t__ t_drit; scalar_t__ t_dlef; } ;
typedef int off_t ;
typedef int Char ;


 int ERR_SYSTEM ;
 unsigned long F_APPEND ;
 int F_GETFL ;
 unsigned long F_NOINTERRUPT ;
 unsigned long F_OVERWRITE ;
 unsigned long F_PIPEIN ;
 unsigned long F_PIPEOUT ;
 unsigned long F_READ ;
 unsigned long F_REPEAT ;
 int F_SETFL ;
 unsigned long F_STDERR ;
 int L_XTND ;
 int OLDSTD ;
 int O_APPEND ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SHDIAG ;
 int SHIN ;
 int SHOUT ;
 int TCSH_IGNORE (int ) ;
 char* _PATH_DEVNULL ;
 int chkclob (char*) ;
 int cleanup_push (char*,int (*) (int *)) ;
 int cleanup_until (char*) ;
 int close_on_exec (int,int ) ;
 int dcopy (int,int) ;
 int didfds ;
 int dmove (int,int) ;
 int dup (int) ;
 int errno ;
 int fcntl (int,int ,...) ;
 scalar_t__ is1atty ;
 scalar_t__ is2atty ;
 scalar_t__ isatty (int) ;
 scalar_t__ isdiagatty ;
 scalar_t__ isoutatty ;
 int lseek (int,int ,int ) ;
 scalar_t__ no_clobber ;
 int short2str (int *) ;
 int * splicepipe (struct command*,scalar_t__) ;
 int stderror (int ,char*,int ) ;
 int strerror (int ) ;
 char* strsave (int ) ;
 int tpgrp ;
 int xclose (int) ;
 int xcreat (char*,int) ;
 int xfree (int *) ;
 int xopen (char*,int) ;

__attribute__((used)) static void
doio(struct command *t, int *pipein, int *pipeout)
{
    int fd;
    Char *cp;
    unsigned long flags = t->t_dflg;

    if (didfds || (flags & F_REPEAT))
 return;
    if ((flags & F_READ) == 0) {
 if (t->t_dlef) {
     char *tmp;




     (void) dcopy(SHIN, 0);
     (void) dcopy(SHOUT, 1);
     (void) dcopy(SHDIAG, 2);
     cp = splicepipe(t, t->t_dlef);
     tmp = strsave(short2str(cp));
     xfree(cp);
     cleanup_push(tmp, xfree);
     if ((fd = xopen(tmp, O_RDONLY|O_LARGEFILE)) < 0)
  stderror(ERR_SYSTEM, tmp, strerror(errno));
     cleanup_until(tmp);


     (void) fcntl(fd, F_SETFL, fcntl(fd, F_GETFL) | O_LARGEFILE);

     (void) dmove(fd, 0);
 }
 else if (flags & F_PIPEIN) {
     xclose(0);
     TCSH_IGNORE(dup(pipein[0]));
     xclose(pipein[0]);
     xclose(pipein[1]);
 }
 else if ((flags & F_NOINTERRUPT) && tpgrp == -1) {
     xclose(0);
     (void) xopen(_PATH_DEVNULL, O_RDONLY|O_LARGEFILE);
 }
 else {
     xclose(0);
     TCSH_IGNORE(dup(OLDSTD));
 }
    }
    if (t->t_drit) {
 char *tmp;

 cp = splicepipe(t, t->t_drit);
 tmp = strsave(short2str(cp));
 xfree(cp);
 cleanup_push(tmp, xfree);



 (void) dcopy(SHOUT, 1);
 (void) dcopy(SHDIAG, 2);
 if ((flags & F_APPEND) != 0) {



     fd = xopen(tmp, O_WRONLY|O_LARGEFILE);
     (void) lseek(fd, (off_t) 0, L_XTND);

 }
 else
     fd = 0;
 if ((flags & F_APPEND) == 0 || fd == -1) {
     if (!(flags & F_OVERWRITE) && no_clobber) {
  if (flags & F_APPEND)
      stderror(ERR_SYSTEM, tmp, strerror(errno));
  chkclob(tmp);
     }
     if ((fd = xcreat(tmp, 0666)) < 0)
  stderror(ERR_SYSTEM, tmp, strerror(errno));


     (void) fcntl(fd, F_SETFL, fcntl(fd, F_GETFL) | O_LARGEFILE);

 }
 cleanup_until(tmp);
 (void) dmove(fd, 1);
 is1atty = isatty(1);
    }
    else if (flags & F_PIPEOUT) {
 xclose(1);
 TCSH_IGNORE(dup(pipeout[1]));
 is1atty = 0;
    }
    else {
 xclose(1);
 TCSH_IGNORE(dup(SHOUT));
 is1atty = isoutatty;



    }

    xclose(2);
    if (flags & F_STDERR) {
 TCSH_IGNORE(dup(1));
 is2atty = is1atty;
    }
    else {
 TCSH_IGNORE(dup(SHDIAG));
 is2atty = isdiagatty;



    }
    didfds = 1;
}
