
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futx {int fu_type; int fu_id; } ;
typedef int off_t ;
typedef int fe ;
typedef int FILE ;


 int ESRCH ;


 int SEEK_CUR ;

 int _PATH_UTX_ACTIVE ;
 int errno ;
 int fclose (int *) ;
 int fread (struct futx*,int,int,int *) ;
 int fseeko (int *,int ,int ) ;
 int * futx_open (int ) ;
 int fwrite (struct futx*,int,int,int *) ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static int
utx_active_remove(struct futx *fu)
{
 FILE *fp;
 struct futx fe;
 int error, ret;




 fp = futx_open(_PATH_UTX_ACTIVE);
 if (fp == ((void*)0))
  return (-1);
 error = ESRCH;
 ret = -1;
 while (fread(&fe, sizeof(fe), 1, fp) == 1 && ret != 0)
  switch (fe.fu_type) {
  case 128:
  case 130:
  case 129:
   if (memcmp(fu->fu_id, fe.fu_id, sizeof(fe.fu_id)) != 0)
    continue;


   if (fseeko(fp, -(off_t)sizeof(fe), SEEK_CUR) == -1)
    error = errno;
   else if (fwrite(fu, sizeof(*fu), 1, fp) < 1)
    error = errno;
   else
    ret = 0;

  }

 fclose(fp);
 if (ret != 0)
  errno = error;
 return (ret);
}
