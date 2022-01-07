
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; scalar_t__ st_uid; } ;
struct dirent {int d_name; } ;
typedef int off_t ;
typedef int buf ;
struct TYPE_6__ {int argc; TYPE_1__** argv; } ;
struct TYPE_5__ {int len; int bp; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;
typedef int DIR ;
typedef char CHAR_T ;


 int CHAR2INT (int *,char*,int ,char*,size_t) ;
 scalar_t__ ENOENT ;
 int FREE_SPACE (int *,char*,size_t) ;
 int GET_SPACE_GOTOC (int *,char*,size_t,int) ;
 int INT2CHAR (int *,int ,int,char*,size_t) ;
 int M_ERR ;
 int M_SYSERR ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 scalar_t__ argv_exp2 (int *,TYPE_2__*,char*,size_t) ;
 scalar_t__ close (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int ex_cinit (int *,TYPE_2__*,int ,int ,int ,int ,int ) ;
 int free (char*) ;
 scalar_t__ getuid () ;
 int msgq_str (int *,int ,char*,char*) ;
 int open (char*,int,int) ;
 int * opendir (char*) ;
 int read (int,char*,int) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,size_t,char*,int) ;
 int sscanf (int ,char*,int*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int unlink (char*) ;
 char* v_wstrdup (int *,char*,size_t) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
file_backup(
 SCR *sp,
 char *name,
 char *bname)
{
 struct dirent *dp;
 struct stat sb;
 DIR *dirp;
 EXCMD cmd;
 off_t off;
 size_t blen;
 int flags, maxnum, nr, num, nw, rfd, wfd, version;
 char *bp, *estr, *p, *pct, *slash, *t, *wfname, buf[8192];
 CHAR_T *wp;
 size_t wlen;
 size_t nlen;
 char *d = ((void*)0);

 rfd = wfd = -1;
 bp = estr = wfname = ((void*)0);







 errno = 0;
 if ((rfd = open(name, O_RDONLY, 0)) < 0) {
  if (errno == ENOENT)
   return (0);
  estr = name;
  goto err;
 }
 ex_cinit(sp, &cmd, 0, 0, 0, 0, 0);
 if (bname[0] == 'N') {
  version = 1;
  ++bname;
 } else
  version = 0;
 CHAR2INT(sp, bname, strlen(bname), wp, wlen);
 if ((wp = v_wstrdup(sp, wp, wlen)) == ((void*)0))
  return (1);
 if (argv_exp2(sp, &cmd, wp, wlen)) {
  free(wp);
  return (1);
 }
 free(wp);






 if (cmd.argc != 1) {
  msgq_str(sp, M_ERR, bname,
      "258|%s expanded into too many file names");
  (void)close(rfd);
  return (1);
 }
 if (version) {
  GET_SPACE_GOTOC(sp, bp, blen, cmd.argv[0]->len * 2 + 50);
  INT2CHAR(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
    p, nlen);
  d = strdup(p);
  p = d;
  for (t = bp, slash = ((void*)0);
       p[0] != '\0'; *t++ = *p++)
   if (p[0] == '%') {
    if (p[1] != '%')
     *t++ = '%';
   } else if (p[0] == '/')
    slash = t;
  pct = t;
  *t++ = '%';
  *t++ = 'd';
  *t = '\0';

  if (slash == ((void*)0)) {
   dirp = opendir(".");
   p = bp;
  } else {
   *slash = '\0';
   dirp = opendir(bp);
   *slash = '/';
   p = slash + 1;
  }
  if (dirp == ((void*)0)) {
   INT2CHAR(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
    estr, nlen);
   goto err;
  }

  for (maxnum = 0; (dp = readdir(dirp)) != ((void*)0);)
   if (sscanf(dp->d_name, p, &num) == 1 && num > maxnum)
    maxnum = num;
  (void)closedir(dirp);


  (void)snprintf(pct, blen - (pct - bp), "%d", maxnum + 1);
  wfname = bp;
 } else {
  bp = ((void*)0);
  INT2CHAR(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
   wfname, nlen);
 }


 if (stat(wfname, &sb) == 0) {
  if (!S_ISREG(sb.st_mode)) {
   msgq_str(sp, M_ERR, bname,
       "259|%s: not a regular file");
   goto err;
  }
  if (sb.st_uid != getuid()) {
   msgq_str(sp, M_ERR, bname, "260|%s: not owned by you");
   goto err;
  }
  if (sb.st_mode & (S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH)) {
   msgq_str(sp, M_ERR, bname,
      "261|%s: accessible by a user other than the owner");
   goto err;
  }
  flags = O_TRUNC;
 } else
  flags = O_CREAT | O_EXCL;
 if ((wfd = open(wfname, flags | O_WRONLY, S_IRUSR | S_IWUSR)) < 0) {
  estr = bname;
  goto err;
 }


 while ((nr = read(rfd, buf, sizeof(buf))) > 0)
  for (off = 0; nr != 0; nr -= nw, off += nw)
   if ((nw = write(wfd, buf + off, nr)) < 0) {
    estr = wfname;
    goto err;
   }
 if (nr < 0) {
  estr = name;
  goto err;
 }

 if (close(rfd)) {
  estr = name;
  goto err;
 }
 if (close(wfd)) {
  estr = wfname;
  goto err;
 }
 if (bp != ((void*)0))
  FREE_SPACE(sp, bp, blen);
 return (0);

alloc_err:
err: if (rfd != -1)
  (void)close(rfd);
 if (wfd != -1) {
  (void)unlink(wfname);
  (void)close(wfd);
 }
 if (estr)
  msgq_str(sp, M_SYSERR, estr, "%s");
 if (d != ((void*)0))
  free(d);
 if (bp != ((void*)0))
  FREE_SPACE(sp, bp, blen);
 return (1);
}
