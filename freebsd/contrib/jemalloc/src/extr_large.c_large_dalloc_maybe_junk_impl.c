
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ config_fill ;
 scalar_t__ extent_in_dss (void*) ;
 scalar_t__ have_dss ;
 int large_dalloc_junk (void*,size_t) ;
 int opt_junk_free ;
 scalar_t__ opt_retain ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
large_dalloc_maybe_junk_impl(void *ptr, size_t size) {
 if (config_fill && have_dss && unlikely(opt_junk_free)) {




  if (opt_retain || (have_dss && extent_in_dss(ptr))) {
   large_dalloc_junk(ptr, size);
  }
 }
}
