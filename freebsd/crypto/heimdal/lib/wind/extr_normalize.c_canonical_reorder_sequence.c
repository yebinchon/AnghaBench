
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ _wind_combining_class (int ) ;
 int swap_char (int *,int *) ;

__attribute__((used)) static void
canonical_reorder_sequence(uint32_t * a, size_t len)
{
    size_t i, j;

    if (len <= 1)
 return;

    for (i = 1; i < len; i++) {
 for (j = i;
      j > 0 &&
   _wind_combining_class(a[j]) < _wind_combining_class(a[j-1]);
      j--)
     swap_char(&a[j], &a[j-1]);
    }
}
