
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int mstolfp (char*,int *) ;

int
decodetime(
 char *str,
 l_fp *lfp
 )
{
 return mstolfp(str, lfp);
}
