
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct unicx {int dummy; } ;
struct uni_print_tbl {scalar_t__ name; scalar_t__ val; } ;


 int uni_entry (char const*,struct unicx*) ;
 int uni_printf (struct unicx*,char*,scalar_t__) ;

void
uni_print_tbl(const char *entry, u_int val, const struct uni_print_tbl *tbl,
    struct unicx *cx)
{
 if (entry)
  uni_entry(entry, cx);
 while (tbl->name) {
  if (tbl->val == val) {
   uni_printf(cx, "%s", tbl->name);
   return;
  }
  tbl++;
 }
 uni_printf(cx, "ERROR(0x%x)", val);
}
