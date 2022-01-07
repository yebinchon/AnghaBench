
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 unsigned char _el_fn_complete (int *,int) ;

unsigned char
_el_fn_sh_complete(EditLine *el, int ch)
{
 return _el_fn_complete(el, ch);
}
