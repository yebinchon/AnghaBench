
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dcopy (int,int) ;
 int xclose (int) ;
 int xdup2 (int,int) ;

int
dmove(int i, int j)
{

    if (i == j || i < 0)
 return (i);
    j = dcopy(i, j);
    if (j != i)
 xclose(i);
    return (j);
}
