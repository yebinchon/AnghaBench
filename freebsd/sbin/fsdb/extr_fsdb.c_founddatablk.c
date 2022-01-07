
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;


 scalar_t__ curinum ;
 scalar_t__ findblk_numtofind ;
 scalar_t__ fsbtodb (int *,int ) ;
 int printf (char*,unsigned long long,int ) ;
 int sblock ;

__attribute__((used)) static int
founddatablk(uint64_t blk)
{

    printf("%llu: data block of inode %ju\n",
 (unsigned long long)fsbtodb(&sblock, blk), (uintmax_t)curinum);
    findblk_numtofind--;
    if (findblk_numtofind == 0)
 return 1;
    return 0;
}
