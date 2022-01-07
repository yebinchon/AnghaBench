
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash_info {int key_offset; int * data; int free; int calloc; int alloc; } ;
struct ohash {int dummy; } ;
typedef int ptrdiff_t ;


 int hash_alloc ;
 int hash_calloc ;
 int hash_free ;
 int ohash_init (struct ohash*,unsigned int,struct ohash_info*) ;

void
mandoc_ohash_init(struct ohash *h, unsigned int sz, ptrdiff_t ko)
{
 struct ohash_info info;

 info.alloc = hash_alloc;
 info.calloc = hash_calloc;
 info.free = hash_free;
 info.data = ((void*)0);
 info.key_offset = ko;

 ohash_init(h, sz, &info);
}
