
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int type; int len; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct TYPE_19__ {unsigned int n; } ;



 int UCL_ARRAY_GET (TYPE_2__*,TYPE_1__ const*) ;






 TYPE_1__* kv_A (TYPE_2__,unsigned int) ;
 int strcmp (int ,int ) ;
 TYPE_1__* ucl_object_iterate (TYPE_1__ const*,int **,int) ;
 int ucl_object_key (TYPE_1__ const*) ;
 TYPE_1__* ucl_object_lookup (TYPE_1__ const*,int ) ;
 int ucl_object_toboolean (TYPE_1__ const*) ;
 int ucl_object_todouble (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 TYPE_2__* vec1 ;
 TYPE_2__* vec2 ;

int
ucl_object_compare (const ucl_object_t *o1, const ucl_object_t *o2)
{
 const ucl_object_t *it1, *it2;
 ucl_object_iter_t iter = ((void*)0);
 int ret = 0;

 if (o1->type != o2->type) {
  return (o1->type) - (o2->type);
 }

 switch (o1->type) {
 case 129:
  if (o1->len == o2->len && o1->len > 0) {
   ret = strcmp (ucl_object_tostring(o1), ucl_object_tostring(o2));
  }
  else {
   ret = o1->len - o2->len;
  }
  break;
 case 132:
 case 131:
 case 128:
  ret = ucl_object_todouble (o1) - ucl_object_todouble (o2);
  break;
 case 133:
  ret = ucl_object_toboolean (o1) - ucl_object_toboolean (o2);
  break;
 case 134:
  if (o1->len == o2->len && o1->len > 0) {
   UCL_ARRAY_GET (vec1, o1);
   UCL_ARRAY_GET (vec2, o2);
   unsigned i;


   for (i = 0; i < vec1->n; i ++) {
    it1 = kv_A (*vec1, i);
    it2 = kv_A (*vec2, i);

    if (it1 == ((void*)0) && it2 != ((void*)0)) {
     return -1;
    }
    else if (it2 == ((void*)0) && it1 != ((void*)0)) {
     return 1;
    }
    else if (it1 != ((void*)0) && it2 != ((void*)0)) {
     ret = ucl_object_compare (it1, it2);
     if (ret != 0) {
      break;
     }
    }
   }
  }
  else {
   ret = o1->len - o2->len;
  }
  break;
 case 130:
  if (o1->len == o2->len && o1->len > 0) {
   while ((it1 = ucl_object_iterate (o1, &iter, 1)) != ((void*)0)) {
    it2 = ucl_object_lookup (o2, ucl_object_key (it1));
    if (it2 == ((void*)0)) {
     ret = 1;
     break;
    }
    ret = ucl_object_compare (it1, it2);
    if (ret != 0) {
     break;
    }
   }
  }
  else {
   ret = o1->len - o2->len;
  }
  break;
 default:
  ret = 0;
  break;
 }

 return ret;
}
