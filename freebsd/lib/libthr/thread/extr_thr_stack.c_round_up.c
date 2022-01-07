
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t _thr_page_size ;

__attribute__((used)) static inline size_t
round_up(size_t size)
{
 if (size % _thr_page_size != 0)
  size = ((size / _thr_page_size) + 1) *
      _thr_page_size;
 return size;
}
