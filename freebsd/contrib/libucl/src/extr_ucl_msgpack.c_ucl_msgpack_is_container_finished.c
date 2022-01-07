
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucl_stack {int level; } ;


 int MSGPACK_CONTAINER_BIT ;
 int assert (int ) ;

__attribute__((used)) static bool
ucl_msgpack_is_container_finished (struct ucl_stack *container)
{
 uint64_t level;

 assert (container != ((void*)0));

 if (container->level & MSGPACK_CONTAINER_BIT) {
  level = container->level & ~MSGPACK_CONTAINER_BIT;

  if (level == 0) {
   return 1;
  }
 }

 return 0;
}
