
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef int SCR ;
typedef TYPE_1__ FREF ;


 int M_SYSERR ;
 int O_PATH ;
 char* O_STR (int *,int ) ;
 int free (char*) ;
 char* join (char*,char*) ;
 int msgq (int *,int ,int *) ;
 int stat (char*,struct stat*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
file_spath(
 SCR *sp,
 FREF *frp,
 struct stat *sbp,
 int *existsp)
{
 int savech;
 size_t len;
 int found;
 char *name, *p, *t, *path;





 name = frp->name;
 if (name == ((void*)0)) {
  *existsp = 0;
  return (0);
 }
 if (name[0] == '/' || (name[0] == '.' &&
     (name[1] == '/' || (name[1] == '.' && name[2] == '/')))) {
  *existsp = !stat(name, sbp);
  return (0);
 }


 if (!stat(name, sbp)) {
  *existsp = 1;
  return (0);
 }


 for (found = 0, p = t = O_STR(sp, O_PATH);; ++p)
  if (*p == ':' || *p == '\0') {




   if (t < p && (p - t != 1 || *t != '.')) {
    savech = *p;
    *p = '\0';
    if ((path = join(t, name)) == ((void*)0)) {
     msgq(sp, M_SYSERR, ((void*)0));
     break;
    }
    len = strlen(path);
    *p = savech;
    if (!stat(path, sbp)) {
     found = 1;
     break;
    }
    free(path);
   }
   t = p + 1;
   if (*p == '\0')
    break;
  }


 if (found) {
  free(frp->name);
  frp->name = path;
 }
 *existsp = found;
 return (0);
}
