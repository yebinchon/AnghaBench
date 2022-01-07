
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futx {int fu_user; } ;
typedef int off_t ;
typedef int FILE ;


 int SEEK_CUR ;
 int _PATH_UTX_LASTLOGIN ;
 int errno ;
 int fclose (int *) ;
 int fread (struct futx*,int,int,int *) ;
 int fseeko (int *,int ,int ) ;
 int * futx_open (int ) ;
 int fwrite (struct futx const*,int,int,int *) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static int
utx_lastlogin_add(const struct futx *fu)
{
 struct futx fe;
 FILE *fp;
 int error, ret;

 ret = 0;






 fp = futx_open(_PATH_UTX_LASTLOGIN);
 if (fp == ((void*)0))
  return (-1);
 while (fread(&fe, sizeof fe, 1, fp) == 1) {
  if (strncmp(fu->fu_user, fe.fu_user, sizeof fe.fu_user) != 0)
   continue;


  ret = fseeko(fp, -(off_t)sizeof fe, SEEK_CUR);
  break;
 }
 if (ret == -1)
  error = errno;
 else if (fwrite(fu, sizeof *fu, 1, fp) < 1) {
  error = errno;
  ret = -1;
 }
 fclose(fp);
 if (ret == -1)
  errno = error;
 return (ret);
}
