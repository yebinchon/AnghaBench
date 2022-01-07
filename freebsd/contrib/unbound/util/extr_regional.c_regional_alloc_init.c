
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;


 int memcpy (void*,void const*,size_t) ;
 void* regional_alloc (struct regional*,size_t) ;

void *
regional_alloc_init(struct regional* r, const void *init, size_t size)
{
 void *s = regional_alloc(r, size);
 if(!s) return ((void*)0);
 memcpy(s, init, size);
 return s;
}
