
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int add_pax_attr_binary (struct archive_string*,char const*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
add_pax_attr(struct archive_string *as, const char *key, const char *value)
{
 add_pax_attr_binary(as, key, value, strlen(value));
}
