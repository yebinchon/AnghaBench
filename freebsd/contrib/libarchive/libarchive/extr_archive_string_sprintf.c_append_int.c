
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct archive_string {int dummy; } ;
typedef scalar_t__ intmax_t ;
typedef scalar_t__ INTMAX_MAX ;


 scalar_t__ INTMAX_MIN ;
 int append_uint (struct archive_string*,scalar_t__,unsigned int) ;
 int archive_strappend_char (struct archive_string*,char) ;

__attribute__((used)) static void
append_int(struct archive_string *as, intmax_t d, unsigned base)
{
 uintmax_t ud;

 if (d < 0) {
  archive_strappend_char(as, '-');
  ud = (d == INTMAX_MIN) ? (uintmax_t)(INTMAX_MAX) + 1 : (uintmax_t)(-d);
 } else
  ud = d;
 append_uint(as, ud, base);
}
