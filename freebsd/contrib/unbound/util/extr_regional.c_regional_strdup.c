
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;


 scalar_t__ regional_alloc_init (struct regional*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

char *
regional_strdup(struct regional *r, const char *string)
{
 return (char*)regional_alloc_init(r, string, strlen(string)+1);
}
