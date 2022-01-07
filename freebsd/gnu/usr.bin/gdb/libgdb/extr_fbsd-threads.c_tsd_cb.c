
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_key_t ;
struct minimal_symbol {int dummy; } ;


 char* DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int builtin_type_void_func_ptr ;
 int extract_typed_address (void (*) (void*),int ) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 int printf_filtered (char*,int ,void (*) (void*),char*) ;

__attribute__((used)) static int
tsd_cb (thread_key_t key, void (*destructor)(void *), void *ignore)
{
  struct minimal_symbol *ms;
  char *name;

  ms = lookup_minimal_symbol_by_pc (
 extract_typed_address(&destructor, builtin_type_void_func_ptr));
  if (!ms)
    name = "???";
  else
    name = DEPRECATED_SYMBOL_NAME (ms);

  printf_filtered ("Key %d, destructor %p <%s>\n", key, destructor, name);
  return 0;
}
