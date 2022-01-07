
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int SSH_X11_VALID_DISPLAY_CHARS ;
 int debug (char*,char const) ;
 int isalnum (int ) ;
 int * strchr (int ,char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
client_x11_display_valid(const char *display)
{
 size_t i, dlen;

 if (display == ((void*)0))
  return 0;

 dlen = strlen(display);
 for (i = 0; i < dlen; i++) {
  if (!isalnum((u_char)display[i]) &&
      strchr(SSH_X11_VALID_DISPLAY_CHARS, display[i]) == ((void*)0)) {
   debug("Invalid character '%c' in DISPLAY", display[i]);
   return 0;
  }
 }
 return 1;
}
