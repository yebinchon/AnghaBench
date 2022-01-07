
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int wantedblksize ;

__attribute__((used)) static int
compare_blk32(uint32_t *wantedblk, uint32_t curblk)
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
