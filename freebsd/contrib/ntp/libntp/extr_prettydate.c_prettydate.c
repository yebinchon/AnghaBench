
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 char* common_prettydate (int *,int) ;

char *
prettydate(
 l_fp *ts
 )
{
 return common_prettydate(ts, 1);
}
