
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int FALSE ;
 int TRUE ;
 int _nc_warning (char*,char const*,...) ;
 int expected_params (char const*) ;
 int isdigit (int) ;
 char* set_attributes ;
 scalar_t__ set_top_margin_parm ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
check_params(TERMTYPE *tp, const char *name, char *value)
{
    int expected = expected_params(name);
    int actual = 0;
    int n;
    bool params[10];
    char *s = value;







    for (n = 0; n < 10; n++)
 params[n] = FALSE;

    while (*s != 0) {
 if (*s == '%') {
     if (*++s == '\0') {
  _nc_warning("expected character after %% in %s", name);
  break;
     } else if (*s == 'p') {
  if (*++s == '\0' || !isdigit((int) *s)) {
      _nc_warning("expected digit after %%p in %s", name);
      return;
  } else {
      n = (*s - '0');
      if (n > actual)
   actual = n;
      params[n] = TRUE;
  }
     }
 }
 s++;
    }

    if (params[0]) {
 _nc_warning("%s refers to parameter 0 (%%p0), which is not allowed", name);
    }
    if (value == set_attributes || expected < 0) {
 ;
    } else if (expected != actual) {
 _nc_warning("%s uses %d parameters, expected %d", name,
      actual, expected);
 for (n = 1; n < actual; n++) {
     if (!params[n])
  _nc_warning("%s omits parameter %d", name, n);
 }
    }
}
