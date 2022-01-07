
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t clen; } ;
typedef TYPE_1__ SCR ;
typedef int ARG_CHAR_T ;


 int v_key_name (TYPE_1__*,int ) ;

size_t
v_key_len(
 SCR *sp,
 ARG_CHAR_T ch)
{
 (void)v_key_name(sp, ch);
 return (sp->clen);
}
