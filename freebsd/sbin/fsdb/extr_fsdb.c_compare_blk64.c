
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int wantedblksize ;

__attribute__((used)) static int
compare_blk64(uint64_t *wantedblk, uint64_t curblk)
{
    int i;

    for (i = 0; i < wantedblksize; i++) {
 if (wantedblk[i] != 0 && wantedblk[i] == curblk) {
     wantedblk[i] = 0;
     return 1;
 }
    }
    return 0;
}
