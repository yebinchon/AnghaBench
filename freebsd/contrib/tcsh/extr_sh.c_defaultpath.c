
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int Char ;


 int DIRAPPEND (int ) ;
 int STRdot ;
 void* Strsave (int ) ;
 int _PATH_BIN ;
 int _PATH_LOCAL ;
 int _PATH_USRBIN ;
 int _PATH_USRBSD ;
 int _PATH_USRUCB ;
 int ** xmalloc (int) ;

__attribute__((used)) static Char **
defaultpath(void)
{
    char *ptr;
    Char **blk, **blkp;
    struct stat stb;

    blkp = blk = xmalloc(sizeof(Char *) * 10);



    *blkp++ = Strsave(STRdot);
    *blkp = ((void*)0);
    return (blk);
}
