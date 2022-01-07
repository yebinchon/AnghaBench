
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNVIS_END ;
 int _UNVIS_END ;
 int unvis (char*,int,int*,int) ;

int
__unvis_44bsd(char *cp, int c, int *astate, int flag)
{

 if (flag & _UNVIS_END)
  flag = (flag & ~_UNVIS_END) ^ UNVIS_END;
 return unvis(cp, c, astate, flag);
}
