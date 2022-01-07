
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_array_header_t ;


 scalar_t__ compare_p2l_info ;
 int svn_sort__array (int *,int (*) (void const*,void const*)) ;

__attribute__((used)) static void
sort_items(apr_array_header_t *entries)
{
  svn_sort__array(entries,
                  (int (*)(const void *, const void *))compare_p2l_info);
}
