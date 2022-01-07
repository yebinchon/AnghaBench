
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzss {unsigned char* window; } ;
typedef int int64_t ;


 size_t lzss_offset_for_position (struct lzss*,int ) ;

__attribute__((used)) static inline unsigned char *
lzss_pointer_for_position(struct lzss *lzss, int64_t pos)
{
  return &lzss->window[lzss_offset_for_position(lzss, pos)];
}
