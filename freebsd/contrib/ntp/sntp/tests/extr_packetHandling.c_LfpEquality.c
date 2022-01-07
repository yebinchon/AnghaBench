
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int L_ISEQU (int const*,int const*) ;

int
LfpEquality(
 const l_fp expected,
 const l_fp actual
 )
{
 return !!(L_ISEQU(&expected, &actual));
}
