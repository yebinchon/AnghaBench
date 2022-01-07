
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int os_snprintf_error(size_t size, int res)
{
 return res < 0 || (unsigned int) res >= size;
}
