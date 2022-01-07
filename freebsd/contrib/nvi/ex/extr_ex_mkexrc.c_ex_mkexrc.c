
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_5__ {int argc; int iflags; TYPE_1__** argv; } ;
struct TYPE_4__ {int len; int bp; } ;
typedef int SCR ;
typedef int FILE ;
typedef TYPE_2__ EXCMD ;


 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 int INT2CHAR (int *,int ,int ,char*,size_t) ;
 int M_ERR ;
 int M_INFO ;
 int M_SYSERR ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEQ_ABBREV ;
 int SEQ_COMMAND ;
 int SEQ_INPUT ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 char* _PATH_EXRC ;
 int abort () ;
 int close (int) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int msgq_str (int *,int ,char*,char*) ;
 int open (char*,int,int) ;
 scalar_t__ opts_save (int *,int *) ;
 scalar_t__ seq_save (int *,int *,char*,int ) ;
 int set_alt_name (int *,char*) ;
 int stat (char*,struct stat*) ;

int
ex_mkexrc(SCR *sp, EXCMD *cmdp)
{
 struct stat sb;
 FILE *fp;
 int fd, sverrno;
 char *fname;
 size_t flen;

 switch (cmdp->argc) {
 case 0:
  fname = _PATH_EXRC;
  break;
 case 1:
  INT2CHAR(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1,
       fname, flen);
  set_alt_name(sp, fname);
  break;
 default:
  abort();
 }

 if (!FL_ISSET(cmdp->iflags, E_C_FORCE) && !stat(fname, &sb)) {
  msgq_str(sp, M_ERR, fname,
      "137|%s exists, not written; use ! to override");
  return (1);
 }


 if ((fd = open(fname, O_CREAT | O_TRUNC | O_WRONLY,
     S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)) < 0) {
  msgq_str(sp, M_SYSERR, fname, "%s");
  return (1);
 }

 if ((fp = fdopen(fd, "w")) == ((void*)0)) {
  sverrno = errno;
  (void)close(fd);
  goto e2;
 }

 if (seq_save(sp, fp, "abbreviate ", SEQ_ABBREV) || ferror(fp))
  goto e1;
 if (seq_save(sp, fp, "map ", SEQ_COMMAND) || ferror(fp))
  goto e1;
 if (seq_save(sp, fp, "map! ", SEQ_INPUT) || ferror(fp))
  goto e1;
 if (opts_save(sp, fp) || ferror(fp))
  goto e1;
 if (fclose(fp)) {
  sverrno = errno;
  goto e2;
 }

 msgq_str(sp, M_INFO, fname, "138|New exrc file: %s");
 return (0);

e1: sverrno = errno;
 (void)fclose(fp);
e2: errno = sverrno;
 msgq_str(sp, M_SYSERR, fname, "%s");
 return (1);
}
