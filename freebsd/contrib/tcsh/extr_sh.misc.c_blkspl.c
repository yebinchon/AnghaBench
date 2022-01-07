
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ** blkcat (int **,int **) ;
 int blkcpy (int **,int **) ;
 scalar_t__ blklen (int **) ;
 int ** xcalloc (scalar_t__,int) ;

Char **
blkspl(Char **up, Char **vp)
{
    Char **wp = xcalloc(blklen(up) + blklen(vp) + 1, sizeof(Char **));

    (void) blkcpy(wp, up);
    return (blkcat(wp, vp));
}
