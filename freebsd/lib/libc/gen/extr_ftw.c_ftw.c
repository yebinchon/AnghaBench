
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fts_info; char const* fts_path; struct stat const* fts_statp; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 int EINVAL ;
 int ELOOP ;
 int FTS_COMFOLLOW ;






 int FTS_LOGICAL ;
 int FTS_NOCHDIR ;




 int FTW_D ;
 int FTW_DNR ;
 int FTW_F ;
 int FTW_NS ;
 int FTW_SL ;
 int errno ;
 scalar_t__ fts_close (int *) ;
 int * fts_open (char* const*,int,int *) ;
 TYPE_1__* fts_read (int *) ;

int
ftw(const char *path, int (*fn)(const char *, const struct stat *, int),
    int nfds)
{
 char * const paths[2] = { (char *)path, ((void*)0) };
 FTSENT *cur;
 FTS *ftsp;
 int error = 0, fnflag, sverrno;


 if (nfds < 1) {
  errno = EINVAL;
  return (-1);
 }

 ftsp = fts_open(paths, FTS_LOGICAL | FTS_COMFOLLOW | FTS_NOCHDIR, ((void*)0));
 if (ftsp == ((void*)0))
  return (-1);
 while ((cur = fts_read(ftsp)) != ((void*)0)) {
  switch (cur->fts_info) {
  case 137:
   fnflag = FTW_D;
   break;
  case 134:
   fnflag = FTW_DNR;
   break;
  case 133:

   continue;
  case 132:
  case 135:
   fnflag = FTW_F;
   break;
  case 131:
  case 130:
  case 128:
   fnflag = FTW_NS;
   break;
  case 129:
   fnflag = FTW_SL;
   break;
  case 136:
   errno = ELOOP;

  default:
   error = -1;
   goto done;
  }
  error = fn(cur->fts_path, cur->fts_statp, fnflag);
  if (error != 0)
   break;
 }
done:
 sverrno = errno;
 if (fts_close(ftsp) != 0 && error == 0)
  error = -1;
 else
  errno = sverrno;
 return (error);
}
