
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_search_dir (int ) ;
 int * standard_search_dirs ;

void
std_search_path(void)
{
 int i, n;


 n = sizeof standard_search_dirs / sizeof standard_search_dirs[0];
 for (i = 0; i < n; i++)
  add_search_dir(standard_search_dirs[i]);
}
