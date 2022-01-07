
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format {int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
compare_format(const void *key, const void *element)
{
 const char *name;
 const struct format *format;

 name = key;
 format = element;

 return (strcmp(name, format->name));
}
