
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e ;
 int el_beep (int ) ;
 int longjmp (int ,int) ;
 int topbuf ;

int
_rl_abort_internal(void)
{
 el_beep(e);
 longjmp(topbuf, 1);

}
