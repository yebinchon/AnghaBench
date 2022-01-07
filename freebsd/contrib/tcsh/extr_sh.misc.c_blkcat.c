
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int blkcpy (int ,int **) ;
 int blkend (int **) ;

__attribute__((used)) static Char **
blkcat(Char **up, Char **vp)
{

    (void) blkcpy(blkend(up), vp);
    return (up);
}
