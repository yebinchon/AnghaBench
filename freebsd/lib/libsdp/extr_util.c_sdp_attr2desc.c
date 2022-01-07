
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef TYPE_1__* sdp_attr_desc_p ;
struct TYPE_3__ {char const* desc; scalar_t__ attr; } ;


 TYPE_1__* sdp_attrs_desc ;

char const *
sdp_attr2desc(uint16_t attr)
{
 register sdp_attr_desc_p a = sdp_attrs_desc;

 for (; a->desc != ((void*)0); a++)
  if (attr == a->attr)
   break;

 return ((a->desc != ((void*)0))? a->desc : "Unknown");
}
