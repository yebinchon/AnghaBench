
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef char CHAR_T ;


 int FREE_SPACEW (int *,char*,size_t) ;
 int GET_SPACE_GOTOW (int *,char*,size_t,size_t) ;
 int MEMCPY (char*,char*,size_t) ;
 int M_ERR ;
 int msgq_wstr (int *,int ,char*,char*) ;

__attribute__((used)) static void
ex_unknown(SCR *sp, CHAR_T *cmd, size_t len)
{
 size_t blen;
 CHAR_T *bp;

 GET_SPACE_GOTOW(sp, bp, blen, len + 1);
 bp[len] = '\0';
 MEMCPY(bp, cmd, len);
 msgq_wstr(sp, M_ERR, bp, "098|The %s command is unknown");
 FREE_SPACEW(sp, bp, blen);

alloc_err:
 return;
}
