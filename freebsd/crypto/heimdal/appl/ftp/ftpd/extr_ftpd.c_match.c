
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNM_NOESCAPE ;
 int fnmatch (char const*,char const*,int ) ;

__attribute__((used)) static int
match(const char *pattern, const char *string)
{
    return fnmatch(pattern, string, FNM_NOESCAPE);
}
