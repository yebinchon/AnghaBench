
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int UChar (char const) ;
 scalar_t__ comma_is_needed (char const*) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ isdigit (int) ;
 char* prg_name ;
 int stderr ;

__attribute__((used)) static bool
legal_tab_list(const char *tab_list)
{
    bool result = TRUE;

    if (tab_list != 0 && *tab_list != '\0') {
 if (comma_is_needed(tab_list)) {
     int n, ch;
     for (n = 0; tab_list[n] != '\0'; ++n) {
  ch = UChar(tab_list[n]);
  if (!(isdigit(ch) || ch == ',' || ch == '+')) {
      fprintf(stderr,
       "%s: unexpected character found '%c'\n",
       prg_name, ch);
      result = FALSE;
      break;
  }
     }
 } else {
     fprintf(stderr, "%s: trailing comma found '%s'\n", prg_name, tab_list);
     result = FALSE;
 }
    } else {
 fprintf(stderr, "%s: no tab-list given\n", prg_name);
 result = FALSE;
    }
    return result;
}
