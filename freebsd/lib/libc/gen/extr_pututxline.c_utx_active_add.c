
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futx {int fu_type; int fu_id; } ;
typedef int off_t ;
typedef int fe ;
typedef int FILE ;






 int SEEK_CUR ;
 int SEEK_SET ;

 int _PATH_UTX_ACTIVE ;
 int errno ;
 int fclose (int *) ;
 int fread (struct futx*,int,int,int *) ;
 int fseeko (int *,int,int ) ;
 int ftello (int *) ;
 int * futx_open (int ) ;
 int fwrite (struct futx const*,int,int,int *) ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static int
utx_active_add(const struct futx *fu)
{
 FILE *fp;
 struct futx fe;
 off_t partial;
 int error, ret;

 partial = -1;
 ret = 0;





 fp = futx_open(_PATH_UTX_ACTIVE);
 if (fp == ((void*)0))
  return (-1);
 while (fread(&fe, sizeof(fe), 1, fp) == 1) {
  switch (fe.fu_type) {
  case 132:

   break;
  case 128:
  case 130:
  case 129:
  case 131:

   if (memcmp(fu->fu_id, fe.fu_id, sizeof(fe.fu_id)) ==
       0) {
    ret = fseeko(fp, -(off_t)sizeof(fe), SEEK_CUR);
    goto exact;
   }
   if (fe.fu_type != 131)
    break;

  default:

   if (partial == -1) {
    partial = ftello(fp);




    if (partial != -1)
     partial -= (off_t)sizeof(fe);
   }
   break;
  }
 }





 if (partial != -1)
  ret = fseeko(fp, partial, SEEK_SET);
exact:
 if (ret == -1)
  error = errno;
 else if (fwrite(fu, sizeof(*fu), 1, fp) < 1)
  error = errno;
 else
  error = 0;
 fclose(fp);
 if (error != 0)
  errno = error;
 return (error == 0 ? 0 : 1);
}
