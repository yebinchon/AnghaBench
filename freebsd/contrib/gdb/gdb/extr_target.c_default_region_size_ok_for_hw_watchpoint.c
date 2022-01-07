
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_LENGTH (int ) ;
 int builtin_type_void_data_ptr ;

__attribute__((used)) static int
default_region_size_ok_for_hw_watchpoint (int byte_count)
{
  return (byte_count <= TYPE_LENGTH (builtin_type_void_data_ptr));
}
