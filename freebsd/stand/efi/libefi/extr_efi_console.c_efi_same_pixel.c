
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ta_format; scalar_t__ ta_fgcolor; scalar_t__ ta_bgcolor; } ;
struct text_pixel {scalar_t__ c; TYPE_1__ a; } ;



__attribute__((used)) static bool
efi_same_pixel(struct text_pixel *px1, struct text_pixel *px2)
{
 if (px1->c != px2->c)
  return (0);

 if (px1->a.ta_format != px2->a.ta_format)
  return (0);
 if (px1->a.ta_fgcolor != px2->a.ta_fgcolor)
  return (0);
 if (px1->a.ta_bgcolor != px2->a.ta_bgcolor)
  return (0);

 return (1);
}
