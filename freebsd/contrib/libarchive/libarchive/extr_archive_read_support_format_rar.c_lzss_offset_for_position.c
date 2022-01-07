
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzss {int mask; } ;
typedef int int64_t ;



__attribute__((used)) static inline int
lzss_offset_for_position(struct lzss *lzss, int64_t pos)
{
  return (int)(pos & lzss->mask);
}
