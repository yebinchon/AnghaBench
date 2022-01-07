
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ TAGF ;
typedef int SCR ;


 int M_SYSERR ;
 int free (char*) ;
 char* join (char*,char*) ;
 int msgq (int *,int ,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
ctag_file(SCR *sp, TAGF *tfp, char *name, char **dirp, size_t *dlenp)
{
 struct stat sb;
 char *p, *buf;
 *dlenp = 0;
 if (name[0] != '/' &&
     stat(name, &sb) && (p = strrchr(tfp->name, '/')) != ((void*)0)) {
  *p = '\0';
  if ((buf = join(tfp->name, name)) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   return;
  }
  if (stat(buf, &sb) == 0) {
   *dirp = tfp->name;
   *dlenp = strlen(*dirp);
  }
  free(buf);
  *p = '/';
 }
}
