
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int cscope_end (int *) ;

__attribute__((used)) static int
cscope_reset(SCR *sp, EXCMD *cmdp, CHAR_T *notusedp)
{
 return cscope_end(sp);
}
