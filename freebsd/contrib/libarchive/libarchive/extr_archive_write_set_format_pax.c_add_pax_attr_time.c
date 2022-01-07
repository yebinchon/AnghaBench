
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct archive_string {int dummy; } ;
typedef int sec ;
typedef int nanos ;
typedef int int64_t ;


 int add_pax_attr (struct archive_string*,char const*,char*) ;
 char* format_int (char*,int ) ;

__attribute__((used)) static void
add_pax_attr_time(struct archive_string *as, const char *key,
    int64_t sec, unsigned long nanos)
{
 int digit, i;
 char *t;




 char tmp[1 + 3*sizeof(sec) + 1 + 3*sizeof(nanos)];

 tmp[sizeof(tmp) - 1] = 0;
 t = tmp + sizeof(tmp) - 1;


 for (digit = 0, i = 10; i > 0 && digit == 0; i--) {
  digit = nanos % 10;
  nanos /= 10;
 }


 if (i > 0) {
  while (i > 0) {
   *--t = "0123456789"[digit];
   digit = nanos % 10;
   nanos /= 10;
   i--;
  }
  *--t = '.';
 }
 t = format_int(t, sec);

 add_pax_attr(as, key, t);
}
