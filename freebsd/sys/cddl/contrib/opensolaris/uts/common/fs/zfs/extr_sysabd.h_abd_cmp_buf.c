
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_cmp_buf_off (int *,void const*,int ,size_t) ;

inline int
abd_cmp_buf(abd_t *abd, const void *buf, size_t size)
{
 return (abd_cmp_buf_off(abd, buf, 0, size));
}
