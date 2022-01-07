
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eqstr_chunk (char const*,int ,char const*,int ) ;
 int strlen (char const*) ;

int
eqstr(const char *s1, const char *s2)
{
 return (eqstr_chunk(s1, strlen(s1), s2, strlen(s2)));
}
