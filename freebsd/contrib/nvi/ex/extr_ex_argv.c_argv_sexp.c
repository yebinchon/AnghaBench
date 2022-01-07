
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int SCR ;
typedef int FILE ;
typedef char CHAR_T ;


 int ADD_SPACE_GOTOW (int *,char*,size_t,size_t) ;
 int EOF ;
 int GETC (int *) ;
 int INT2CHAR (int *,char*,int ,char*,size_t) ;
 int M_ERR ;
 int M_SYSERR ;
 scalar_t__ O_ISSET (int *,int ) ;
 int O_SECURE ;
 int O_SHELL ;
 char* O_STR (int *,int ) ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int STRLEN (char*) ;
 int _exit (int) ;
 int close (int) ;
 int cmdskip (char) ;
 int dup2 (int,int ) ;
 int execl (char*,char*,char*,char*,char*) ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int msgq (int *,int ,char*) ;
 int msgq_str (int *,int ,char*,char*) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ proc_wait (int *,long,char*,int,int ) ;
 char* strrchr (char*,char) ;
 scalar_t__ vfork () ;

__attribute__((used)) static int
argv_sexp(SCR *sp, CHAR_T **bpp, size_t *blenp, size_t *lenp)
{
 enum { SEXP_ERR, SEXP_EXPANSION_ERR, SEXP_OK } rval;
 FILE *ifp;
 pid_t pid;
 size_t blen, len;
 int ch, std_output[2];
 CHAR_T *bp, *p;
 char *sh, *sh_path;
 char *np;
 size_t nlen;


 if (O_ISSET(sp, O_SECURE)) {
  msgq(sp, M_ERR,
"289|Shell expansions not supported when the secure edit option is set");
  return (1);
 }

 sh_path = O_STR(sp, O_SHELL);
 if ((sh = strrchr(sh_path, '/')) == ((void*)0))
  sh = sh_path;
 else
  ++sh;


 bp = *bpp;
 blen = *blenp;
 ifp = ((void*)0);
 std_output[0] = std_output[1] = -1;
 if (pipe(std_output) < 0) {
  msgq(sp, M_SYSERR, "pipe");
  return (1);
 }
 if ((ifp = fdopen(std_output[0], "r")) == ((void*)0)) {
  msgq(sp, M_SYSERR, "fdopen");
  goto err;
 }





 switch (pid = vfork()) {
 case -1:
  msgq(sp, M_SYSERR, "vfork");
err: if (ifp != ((void*)0))
   (void)fclose(ifp);
  else if (std_output[0] != -1)
   close(std_output[0]);
  if (std_output[1] != -1)
   close(std_output[0]);
  return (1);
 case 0:

  (void)dup2(std_output[1], STDOUT_FILENO);


  (void)close(std_output[0]);
  (void)close(std_output[1]);
  (void)close(STDERR_FILENO);





  INT2CHAR(sp, bp, STRLEN(bp)+1, np, nlen);
  execl(sh_path, sh, "-c", np, (char *)((void*)0));
  msgq_str(sp, M_SYSERR, sh_path, "118|Error: execl: %s");
  _exit(127);
 default:

  (void)close(std_output[1]);
  break;
 }
 for (p = bp, len = 0, ch = EOF;
     (ch = GETC(ifp)) != EOF; *p++ = ch, blen-=sizeof(CHAR_T), ++len)
  if (blen < 5) {
   ADD_SPACE_GOTOW(sp, bp, *blenp, *blenp * 2);
   p = bp + len;
   blen = *blenp - len;
  }


 if (p > bp && (p[-1] == '\n' || p[-1] == '\r')) {
  --p;
  --len;
 }
 *p = '\0';
 *lenp = len;
 *bpp = bp;

 if (ferror(ifp))
  goto ioerr;
 if (fclose(ifp)) {
ioerr: msgq_str(sp, M_ERR, sh, "119|I/O error: %s");
alloc_err: rval = SEXP_ERR;
 } else
  rval = SEXP_OK;
 if (proc_wait(sp, (long)pid, sh, 1, 0))
  rval = SEXP_EXPANSION_ERR;

 for (p = bp; len; ++p, --len)
  if (!cmdskip(*p))
   break;
 if (len == 0)
  rval = SEXP_EXPANSION_ERR;

 if (rval == SEXP_EXPANSION_ERR)
  msgq(sp, M_ERR, "304|Shell expansion failed");

 return (rval == SEXP_OK ? 0 : 1);
}
