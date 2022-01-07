
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
typedef int buf ;


 int* borders_locale ;
 int snprintf (char*,int,char*,int) ;
 int tbl_fill_char (struct termp*,int,size_t) ;
 int tbl_fill_string (struct termp*,char*,size_t) ;

__attribute__((used)) static void
tbl_fill_border(struct termp *tp, int c, size_t len)
{
 char buf[12];

 if ((c = borders_locale[c]) > 127) {
  (void)snprintf(buf, sizeof(buf), "\\[u%04x]", c);
  tbl_fill_string(tp, buf, len);
 } else
  tbl_fill_char(tp, c, len);
}
