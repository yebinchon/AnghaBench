
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {size_t first_size; } ;


 int log_assert (int) ;
 scalar_t__ malloc (size_t) ;
 int regional_init (struct regional*) ;

struct regional*
regional_create_custom(size_t size)
{
 struct regional* r = (struct regional*)malloc(size);
 log_assert(sizeof(struct regional) <= size);
 if(!r) return ((void*)0);
 r->first_size = size;
 regional_init(r);
 return r;
}
