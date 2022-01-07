
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _strdup (char const*) ;

char * os_rel2abs_path(const char *rel_path)
{
 return _strdup(rel_path);
}
