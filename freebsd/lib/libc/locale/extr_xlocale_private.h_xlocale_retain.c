
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_refcounted {int retain_count; } ;


 int atomic_add_long (int *,int) ;

__attribute__((used)) __attribute__((unused)) static void*
xlocale_retain(void *val)
{
 struct xlocale_refcounted *obj = val;
 atomic_add_long(&(obj->retain_count), 1);
 return (val);
}
