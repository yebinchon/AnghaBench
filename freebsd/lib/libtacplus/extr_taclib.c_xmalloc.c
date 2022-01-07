
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;


 int generr (struct tac_handle*,char*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
xmalloc(struct tac_handle *h, size_t size)
{
 void *r;

 if ((r = malloc(size)) == ((void*)0))
  generr(h, "Out of memory");
 return r;
}
