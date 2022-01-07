
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __isthreaded ;

__attribute__((used)) static inline int
_thr_isthreaded(void)
{
 return (__isthreaded != 0);
}
