
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int tmp ;
struct archive_string {int dummy; } ;
typedef int int64_t ;


 int add_pax_attr (struct archive_string*,char const*,int ) ;
 int format_int (char*,int ) ;

__attribute__((used)) static void
add_pax_attr_int(struct archive_string *as, const char *key, int64_t value)
{
 char tmp[1 + 3 * sizeof(value)];

 tmp[sizeof(tmp) - 1] = 0;
 add_pax_attr(as, key, format_int(tmp + sizeof(tmp) - 1, value));
}
