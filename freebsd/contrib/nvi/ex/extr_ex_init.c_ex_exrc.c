
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct stat {int st_ino; int st_dev; } ;
struct TYPE_11__ {int gp; } ;
typedef TYPE_1__ SCR ;
typedef int CHAR_T ;


 int CHAR2INT (TYPE_1__*,char*,scalar_t__,int *,size_t) ;
 scalar_t__ EXCMD_RUNNING (int ) ;
 scalar_t__ F_ISSET (TYPE_1__*,int) ;
 int M_SYSERR ;


 int O_EXRC ;
 scalar_t__ O_ISSET (TYPE_1__*,int ) ;

 int SC_EXIT ;
 int SC_EXIT_FORCE ;
 char* _PATH_EXRC ;
 char* _PATH_NEXRC ;
 char* _PATH_SYSEXRC ;
 int ex_cmd (TYPE_1__*) ;
 int ex_run_file (TYPE_1__*,char*) ;
 scalar_t__ ex_run_str (TYPE_1__*,char*,int *,size_t,int,int ) ;
 int const exrc_isok (TYPE_1__*,struct stat*,char*,int,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* join (char*,char*) ;
 int msgq (TYPE_1__*,int ,int *) ;
 scalar_t__ strlen (char*) ;

int
ex_exrc(SCR *sp)
{
 struct stat hsb, lsb;
 char *p, *path;
 CHAR_T *wp;
 size_t wlen;
 switch (exrc_isok(sp, &hsb, _PATH_SYSEXRC, 1, 0)) {
 case 130:
 case 129:
  break;
 case 128:
  if (ex_run_file(sp, _PATH_SYSEXRC))
   return (1);
  break;
 }


 if (EXCMD_RUNNING(sp->gp))
  (void)ex_cmd(sp);
 if (F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE))
  return (0);

 if ((p = getenv("NEXINIT")) != ((void*)0)) {
  CHAR2INT(sp, p, strlen(p) + 1, wp, wlen);
  if (ex_run_str(sp, "NEXINIT", wp, wlen - 1, 1, 0))
   return (1);
 } else if ((p = getenv("EXINIT")) != ((void*)0)) {
  CHAR2INT(sp, p, strlen(p) + 1, wp, wlen);
  if (ex_run_str(sp, "EXINIT", wp, wlen - 1, 1, 0))
   return (1);
 } else if ((p = getenv("HOME")) != ((void*)0) && *p) {
  int st = 0;

  if ((path = join(p, _PATH_NEXRC)) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   return (1);
  }
  switch (exrc_isok(sp, &hsb, path, 0, 1)) {
  case 130:
   free(path);
   if ((path = join(p, _PATH_EXRC)) == ((void*)0)) {
    msgq(sp, M_SYSERR, ((void*)0));
    return (1);
   }
   if (exrc_isok(sp,
       &hsb, path, 0, 1) == 128 && ex_run_file(sp, path))
    st = 1;
   break;
  case 129:
   break;
  case 128:
   if (ex_run_file(sp, path))
    st = 1;
   break;
  }
  free(path);
  if (st)
   return st;
 }


 if (EXCMD_RUNNING(sp->gp))
  (void)ex_cmd(sp);
 if (F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE))
  return (0);


 if (O_ISSET(sp, O_EXRC)) {
  switch (exrc_isok(sp, &lsb, _PATH_NEXRC, 0, 0)) {
  case 130:
   if (exrc_isok(sp, &lsb, _PATH_EXRC, 0, 0) == 128 &&
       (lsb.st_dev != hsb.st_dev ||
       lsb.st_ino != hsb.st_ino) &&
       ex_run_file(sp, _PATH_EXRC))
    return (1);
   break;
  case 129:
   break;
  case 128:
   if ((lsb.st_dev != hsb.st_dev ||
       lsb.st_ino != hsb.st_ino) &&
       ex_run_file(sp, _PATH_NEXRC))
    return (1);
   break;
  }

  if (EXCMD_RUNNING(sp->gp))
   (void)ex_cmd(sp);
  if (F_ISSET(sp, SC_EXIT | SC_EXIT_FORCE))
   return (0);
 }

 return (0);
}
