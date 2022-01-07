
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_zero_off (int *,int ,size_t) ;

inline void
abd_zero(abd_t *abd, size_t size)
{
 abd_zero_off(abd, 0, size);
}
