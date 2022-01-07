
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_node_map_wrap (char const*,int (*) (void*,uint64_t,char*),void*,int *,int ) ;

int parse_node_map(const char *file_name,
     int (*create) (void *, uint64_t, char *), void *cxt)
{
 return parse_node_map_wrap(file_name, create, cxt, ((void*)0), 0);
}
