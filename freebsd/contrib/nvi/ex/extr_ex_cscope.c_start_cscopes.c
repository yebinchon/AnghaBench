
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int CHAR2INT (int *,char*,int,int *,size_t) ;
 int FREE_SPACE (int *,char*,size_t) ;
 int GET_SPACE_RETC (int *,char*,size_t,size_t) ;
 int cscope_add (int *,int *,int *) ;
 char* getenv (char*) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
start_cscopes(SCR *sp, EXCMD *cmdp)
{
 size_t blen, len;
 char *bp, *cscopes, *p, *t;
 CHAR_T *wp;
 size_t wlen;
 if ((cscopes = getenv("CSCOPE_DIRS")) == ((void*)0))
  return (0);
 len = strlen(cscopes);
 GET_SPACE_RETC(sp, bp, blen, len);
 memcpy(bp, cscopes, len + 1);

 for (cscopes = t = bp; (p = strsep(&t, "\t :")) != ((void*)0);)
  if (*p != '\0') {
   CHAR2INT(sp, p, strlen(p) + 1, wp, wlen);
   (void)cscope_add(sp, cmdp, wp);
  }

 FREE_SPACE(sp, bp, blen);
 return (0);
}
