
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nl_catd ;
struct TYPE_7__ {int catd; } ;
struct TYPE_6__ {TYPE_5__* gp; } ;
typedef TYPE_1__ SCR ;


 scalar_t__ EFTYPE ;
 int LC_MESSAGES ;
 int M_ERR ;
 int M_SYSERR ;
 int NL_CAT_LOCALE ;
 int catopen (char*,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* join (char*,char*) ;
 int msg_close (TYPE_5__*) ;
 int msgq (TYPE_1__*,int ,int *) ;
 int msgq_str (TYPE_1__*,int ,char*,char*) ;
 char* setlocale (int ,int *) ;
 char* strrchr (char*,char) ;

int
msg_open(
 SCR *sp,
 char *file)
{
 static int first = 1;
 nl_catd catd;
 char *p;
 int rval = 0;

 if ((p = strrchr(file, '/')) != ((void*)0) && p[1] == '\0') {

  if ((p = join(file, setlocale(LC_MESSAGES, ((void*)0)))) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   return (1);
  }
 } else {

  if ((p = join(".", file)) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   return (1);
  }
 }
 errno = 0;
 if ((catd = catopen(p, NL_CAT_LOCALE)) == (nl_catd)-1) {
  if (first) {
   first = 0;
   rval = 1;
   goto ret;
  }






  if (errno == 0 || errno == EFTYPE)
   msgq_str(sp, M_ERR, p,
       "030|The file %s is not a message catalog");
  else
   msgq_str(sp, M_SYSERR, p, "%s");
  rval = 1;
  goto ret;
 }
 first = 0;

 msg_close(sp->gp);
 sp->gp->catd = catd;
ret: free(p);
 return (rval);
}
