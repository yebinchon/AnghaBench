
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; } ;


 size_t slabhash_get_size (struct slabhash*) ;

int slabhash_is_size(struct slabhash* sl, size_t size, size_t slabs)
{



 if(!sl) return 0;
 if(sl->size != slabs) return 0;
 if(slabs == 0) return 0;
 if( (size/slabs)*slabs == slabhash_get_size(sl))
  return 1;
 return 0;
}
