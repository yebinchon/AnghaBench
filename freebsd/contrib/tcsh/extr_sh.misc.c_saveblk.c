
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int Strsave (int ) ;
 scalar_t__ blklen (int **) ;
 int ** xcalloc (scalar_t__,int) ;

Char **
saveblk(Char **v)
{
    Char **newv, **onewv;

    if (v == ((void*)0))
 return ((void*)0);

    onewv = newv = xcalloc(blklen(v) + 1, sizeof(Char **));

    while (*v)
 *newv++ = Strsave(*v++);
    return (onewv);
}
