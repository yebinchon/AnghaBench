
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _thr_initial ;

__attribute__((used)) static inline int
_thr_is_inited(void)
{
 return (_thr_initial != ((void*)0));
}
