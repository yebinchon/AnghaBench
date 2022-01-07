
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mapped ;
typedef int TERMTYPE ;


 size_t UChar (char const) ;
 scalar_t__ VALID_STRING (char*) ;
 int _nc_warning (char*,...) ;
 char* acs_chars ;
 int assert (int) ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
check_acs(TERMTYPE *tp)
{
    if (VALID_STRING(acs_chars)) {
 const char *boxes = "lmkjtuvwqxn";
 char mapped[256];
 char missing[256];
 const char *p;
 char *q;

 memset(mapped, 0, sizeof(mapped));
 for (p = acs_chars; *p != '\0'; p += 2) {
     if (p[1] == '\0') {
  _nc_warning("acsc has odd number of characters");
  break;
     }
     mapped[UChar(p[0])] = p[1];
 }

 if (mapped[UChar('I')] && !mapped[UChar('i')]) {
     _nc_warning("acsc refers to 'I', which is probably an error");
 }

 for (p = boxes, q = missing; *p != '\0'; ++p) {
     if (!mapped[UChar(p[0])]) {
  *q++ = p[0];
     }
 }
 *q = '\0';

 assert(strlen(missing) <= strlen(boxes));
 if (*missing != '\0' && strcmp(missing, boxes)) {
     _nc_warning("acsc is missing some line-drawing mapping: %s", missing);
 }
    }
}
