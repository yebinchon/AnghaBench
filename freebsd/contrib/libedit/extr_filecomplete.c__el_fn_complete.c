
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int break_chars ;
 scalar_t__ fn_complete (int *,int *,int *,int ,int *,int *,size_t,int *,int *,int *,int *) ;

unsigned char
_el_fn_complete(EditLine *el, int ch __attribute__((__unused__)))
{
 return (unsigned char)fn_complete(el, ((void*)0), ((void*)0),
     break_chars, ((void*)0), ((void*)0), (size_t)100,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
