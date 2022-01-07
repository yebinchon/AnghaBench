
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _citrus_esdb_free_list (char**,size_t) ;

void
__bsd___iconv_free_list(char **list, size_t sz)
{

 _citrus_esdb_free_list(list, sz);
}
