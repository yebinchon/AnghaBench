
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _wind_combining_class (int ) ;
 int canonical_reorder_sequence (int *,size_t) ;

__attribute__((used)) static void
canonical_reorder(uint32_t *tmp, size_t tmp_len)
{
    size_t i;

    for (i = 0; i < tmp_len; ++i) {
 int cc = _wind_combining_class(tmp[i]);
 if (cc) {
     size_t j;
     for (j = i + 1;
   j < tmp_len && _wind_combining_class(tmp[j]);
   ++j)
  ;
     canonical_reorder_sequence(&tmp[i], j - i);
     i = j;
 }
    }
}
