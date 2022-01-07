
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzss {int position; } ;
typedef int int64_t ;



__attribute__((used)) static inline int64_t
lzss_position(struct lzss *lzss)
{
  return lzss->position;
}
