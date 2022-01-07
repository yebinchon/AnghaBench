
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_search {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_free_search_symbols_cleanup ;
 struct cleanup* make_cleanup (int ,struct symbol_search*) ;

struct cleanup *
make_cleanup_free_search_symbols (struct symbol_search *symbols)
{
  return make_cleanup (do_free_search_symbols_cleanup, symbols);
}
