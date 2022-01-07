
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int * opts; } ;
typedef TYPE_1__ SCR ;
typedef int OPTION ;


 int conv_enc (TYPE_1__*,int,char*) ;

int
f_encoding(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 int offset = op - sp->opts;

 return conv_enc(sp, offset, str);
}
