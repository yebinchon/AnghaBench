
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ** blkcpy (int **,int **) ;
 scalar_t__ blklen (int **) ;
 int ** xcalloc (scalar_t__,int) ;

Char **
copyblk(Char **v)
{
    Char **nv = xcalloc(blklen(v) + 1, sizeof(Char **));

    return (blkcpy(nv, v));
}
