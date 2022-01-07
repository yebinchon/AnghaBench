
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* curshell ;
 scalar_t__* initshells () ;

char *
getusershell(void)
{
 char *ret;

 if (curshell == ((void*)0))
  curshell = initshells();

 ret = (char *)*curshell;
 if (ret != ((void*)0))
  curshell++;
 return (ret);
}
