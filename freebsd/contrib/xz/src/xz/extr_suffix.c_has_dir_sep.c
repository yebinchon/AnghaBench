
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 int * strpbrk (char const*,char*) ;

__attribute__((used)) static bool
has_dir_sep(const char *str)
{



 return strchr(str, '/') != ((void*)0);

}
