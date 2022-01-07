
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_copy_off (int *,int *,int ,int ,size_t) ;

inline void
abd_copy(abd_t *dabd, abd_t *sabd, size_t size)
{
 abd_copy_off(dabd, sabd, 0, 0, size);
}
