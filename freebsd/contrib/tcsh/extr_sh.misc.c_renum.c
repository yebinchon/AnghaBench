
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSAFE ;
 int dup (int) ;
 int xclose (int) ;

__attribute__((used)) static int
renum(int i, int j)
{
    int k = dup(i);

    if (k < 0)
 return (-1);
    if (j == -1 && k > FSAFE)
 return (k);
    if (k != j) {
 j = renum(k, j);
 xclose(k);
 return (j);
    }
    return (k);
}
