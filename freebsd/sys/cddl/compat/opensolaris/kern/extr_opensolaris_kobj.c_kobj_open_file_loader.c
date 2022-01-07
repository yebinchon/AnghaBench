
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* preload_search_by_name (char const*) ;

__attribute__((used)) static void *
kobj_open_file_loader(const char *file)
{

 return (preload_search_by_name(file));
}
