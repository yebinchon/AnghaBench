
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int forced_memzero (void*,size_t) ;
 int os_free (void*) ;

void bin_clear_free(void *bin, size_t len)
{
 if (bin) {
  forced_memzero(bin, len);
  os_free(bin);
 }
}
