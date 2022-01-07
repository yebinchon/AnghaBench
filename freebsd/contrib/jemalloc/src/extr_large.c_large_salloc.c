
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 size_t extent_usize_get (int const*) ;

size_t
large_salloc(tsdn_t *tsdn, const extent_t *extent) {
 return extent_usize_get(extent);
}
