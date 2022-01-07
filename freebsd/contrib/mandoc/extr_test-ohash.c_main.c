
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash_info {int free; int calloc; int alloc; } ;
struct ohash {int dummy; } ;


 int ohash_delete (struct ohash*) ;
 int ohash_init (struct ohash*,int,struct ohash_info*) ;
 int xcalloc ;
 int xfree ;
 int xmalloc ;

int
main(void)
{
 struct ohash h;
 struct ohash_info i;
 i.alloc = xmalloc;
 i.calloc = xcalloc;
 i.free = xfree;
 ohash_init(&h, 2, &i);
 ohash_delete(&h);
 return 0;
}
