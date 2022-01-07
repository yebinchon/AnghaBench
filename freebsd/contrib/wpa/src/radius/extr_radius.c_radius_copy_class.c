
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radius_class_data {size_t count; TYPE_1__* attr; } ;
struct radius_attr_data {int dummy; } ;
struct TYPE_2__ {int len; int * data; } ;


 TYPE_1__* os_calloc (size_t,int) ;
 int * os_memdup (int *,int ) ;

int radius_copy_class(struct radius_class_data *dst,
        const struct radius_class_data *src)
{
 size_t i;

 if (src->attr == ((void*)0))
  return 0;

 dst->attr = os_calloc(src->count, sizeof(struct radius_attr_data));
 if (dst->attr == ((void*)0))
  return -1;

 dst->count = 0;

 for (i = 0; i < src->count; i++) {
  dst->attr[i].data = os_memdup(src->attr[i].data,
           src->attr[i].len);
  if (dst->attr[i].data == ((void*)0))
   break;
  dst->count++;
  dst->attr[i].len = src->attr[i].len;
 }

 return 0;
}
