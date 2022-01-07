
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSAFE ;
 int renum (int,int) ;
 int xclose (int) ;
 int xdup2 (int,int) ;

int
dcopy(int i, int j)
{

    if (i == j || i < 0 || (j < 0 && i > FSAFE))
 return (i);
    if (j >= 0) {




 xclose(j);

    }
    return (renum(i, j));
}
