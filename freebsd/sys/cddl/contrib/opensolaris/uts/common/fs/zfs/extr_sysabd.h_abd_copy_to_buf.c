
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_copy_to_buf_off (void*,int *,int ,size_t) ;

inline void
abd_copy_to_buf(void* buf, abd_t *abd, size_t size)
{
 abd_copy_to_buf_off(buf, abd, 0, size);
}
