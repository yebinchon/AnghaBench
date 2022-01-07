
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsm_socket_type {int bst_local_socket_type; } ;


 struct bsm_socket_type const* bsm_socket_types ;
 int bsm_socket_types_count ;

__attribute__((used)) static const struct bsm_socket_type *
bsm_lookup_local_socket_type(int local_socket_type)
{
 int i;

 for (i = 0; i < bsm_socket_types_count; i++) {
  if (bsm_socket_types[i].bst_local_socket_type ==
      local_socket_type)
   return (&bsm_socket_types[i]);
 }
 return (((void*)0));
}
