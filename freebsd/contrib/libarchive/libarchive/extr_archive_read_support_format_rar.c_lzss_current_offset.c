
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzss {int position; } ;


 int lzss_offset_for_position (struct lzss*,int ) ;

__attribute__((used)) static inline int
lzss_current_offset(struct lzss *lzss)
{
  return lzss_offset_for_position(lzss, lzss->position);
}
