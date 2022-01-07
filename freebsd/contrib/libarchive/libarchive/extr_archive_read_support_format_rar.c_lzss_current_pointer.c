
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lzss {int position; } ;


 int * lzss_pointer_for_position (struct lzss*,int ) ;

__attribute__((used)) static inline uint8_t *
lzss_current_pointer(struct lzss *lzss)
{
  return lzss_pointer_for_position(lzss, lzss->position);
}
