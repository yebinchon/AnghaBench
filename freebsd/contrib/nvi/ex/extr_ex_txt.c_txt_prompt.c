
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32_t ;
struct TYPE_3__ {int lb; scalar_t__ ai; scalar_t__ lno; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int ARG_CHAR_T ;


 scalar_t__ LF_ISSET (int ) ;
 scalar_t__ O_ISSET (int *,int ) ;
 int O_NUMBER ;
 int TXT_AUTOINDENT ;
 int TXT_NUMBER ;
 int TXT_PROMPT ;
 int WVS ;
 int ex_fflush (int *) ;
 int ex_printf (int *,char*,int,...) ;

__attribute__((used)) static void
txt_prompt(SCR *sp, TEXT *tp, ARG_CHAR_T prompt, u_int32_t flags)
{

 if (LF_ISSET(TXT_PROMPT))
  (void)ex_printf(sp, "%c", prompt);


 if (LF_ISSET(TXT_NUMBER) && O_ISSET(sp, O_NUMBER))
  (void)ex_printf(sp, "%6lu  ", (u_long)tp->lno);


 if (LF_ISSET(TXT_AUTOINDENT))
  (void)ex_printf(sp, WVS, (int)tp->ai, tp->lb);
 (void)ex_fflush(sp);
}
