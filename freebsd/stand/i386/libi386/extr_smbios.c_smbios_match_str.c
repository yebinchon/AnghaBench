
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
smbios_match_str(const char* s1, const char* s2)
{
 return (s1 == ((void*)0) || (s2 != ((void*)0) && !strcmp(s1, s2)));
}
