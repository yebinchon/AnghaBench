
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_memmove (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static inline void os_remove_in_array(void *ptr, size_t nmemb, size_t size,
          size_t idx)
{
 if (idx < nmemb - 1)
  os_memmove(((unsigned char *) ptr) + idx * size,
      ((unsigned char *) ptr) + (idx + 1) * size,
      (nmemb - idx - 1) * size);
}
