
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ compare_blk32 (scalar_t__*,scalar_t__) ;
 scalar_t__ founddatablk (scalar_t__) ;

__attribute__((used)) static int
find_blks32(uint32_t *buf, int size, uint32_t *wantedblk)
{
    int blk;
    for (blk = 0; blk < size; blk++) {
 if (buf[blk] == 0)
     continue;
 if (compare_blk32(wantedblk, buf[blk])) {
     if (founddatablk(buf[blk]))
  return 1;
 }
    }
    return 0;
}
