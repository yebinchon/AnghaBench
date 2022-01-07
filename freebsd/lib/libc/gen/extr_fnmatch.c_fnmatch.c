
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;


 int fnmatch1 (char const*,char const*,char const*,int,int const,int const) ;

int
fnmatch(const char *pattern, const char *string, int flags)
{
 static const mbstate_t initial;

 return (fnmatch1(pattern, string, string, flags, initial, initial));
}
