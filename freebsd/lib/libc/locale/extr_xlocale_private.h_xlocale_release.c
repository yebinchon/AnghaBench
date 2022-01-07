
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_refcounted {int (* destructor ) (struct xlocale_refcounted*) ;int retain_count; } ;


 int atomic_fetchadd_long (int *,int) ;
 int stub1 (struct xlocale_refcounted*) ;

__attribute__((used)) __attribute__((unused)) static void
xlocale_release(void *val)
{
 struct xlocale_refcounted *obj = val;
 long count;

 count = atomic_fetchadd_long(&(obj->retain_count), -1) - 1;
 if (count < 0 && obj->destructor != ((void*)0))
  obj->destructor(obj);
}
