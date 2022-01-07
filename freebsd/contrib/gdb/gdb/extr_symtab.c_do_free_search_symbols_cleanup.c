
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_search_symbols (void*) ;

__attribute__((used)) static void
do_free_search_symbols_cleanup (void *symbols)
{
  free_search_symbols (symbols);
}
