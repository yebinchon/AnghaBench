
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
smp_yesno(int val)
{
 char *str;

 if (val)
  str = "Yes";
 else
  str = "No";

 return (str);
}
