
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t
html_tbl_strlen(const char *p, void *arg)
{
 return strlen(p);
}
