
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long IS_ERR_VALUE (unsigned long) ;

__attribute__((used)) static inline long IS_ERR(const void *ptr)
{
 return IS_ERR_VALUE((unsigned long)ptr);
}
