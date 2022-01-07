
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {char* ty_name; char* ty_getty; char* ty_type; char* ty_comment; void* ty_group; int * ty_window; int ty_status; } ;


 scalar_t__ MALLOCCHUNK ;
 int TTY_DIALUP ;
 int TTY_NETWORK ;
 int TTY_ON ;
 int TTY_SECURE ;
 int _TTYS_DIALUP ;
 int _TTYS_GROUP ;
 int _TTYS_INSECURE ;
 int _TTYS_NETWORK ;
 void* _TTYS_NOGROUP ;
 int _TTYS_OFF ;
 int _TTYS_ON ;
 int _TTYS_ONIFCONSOLE ;
 int _TTYS_ONIFEXISTS ;
 int _TTYS_SECURE ;
 int _TTYS_WINDOW ;
 int auto_exists_status (char*) ;
 int auto_tty_status (char*) ;
 int endttyent () ;
 int feof (int ) ;
 int fgets (char*,scalar_t__,int ) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ lbsize ;
 char* line ;
 char* realloc (char*,scalar_t__) ;
 scalar_t__ scmp (int ) ;
 int setttyent () ;
 char* skip (char*) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 int tf ;
 void* value (char*) ;
 scalar_t__ vcmp (int ) ;
 char zapchar ;

struct ttyent *
getttyent(void)
{
 static struct ttyent tty;
 char *p;
 int c;
 size_t i;

 if (!tf && !setttyent())
  return (((void*)0));
 for (;;) {
  if (!fgets(p = line, lbsize, tf))
   return (((void*)0));

  while (!strchr(p, '\n') && !feof(tf)) {
   i = strlen(p);
   lbsize += MALLOCCHUNK;
   if ((p = realloc(line, lbsize)) == ((void*)0)) {
    (void)endttyent();
    return (((void*)0));
   }
   line = p;
   if (!fgets(&line[i], lbsize - i, tf))
    return (((void*)0));
  }
  while (isspace((unsigned char)*p))
   ++p;
  if (*p && *p != '#')
   break;
 }




 zapchar = 0;
 tty.ty_name = p;
 tty.ty_status = 0;
 tty.ty_window = ((void*)0);
 tty.ty_group = _TTYS_NOGROUP;

 p = skip(p);
 if (!*(tty.ty_getty = p))
  tty.ty_getty = tty.ty_type = ((void*)0);
 else {
  p = skip(p);
  if (!*(tty.ty_type = p))
   tty.ty_type = ((void*)0);
  else {

   if (!strncmp(p, _TTYS_DIALUP, sizeof(_TTYS_DIALUP) - 1) && isspace((unsigned char)p[sizeof(_TTYS_DIALUP) - 1]))
    tty.ty_status |= TTY_DIALUP;
   else if (!strncmp(p, _TTYS_NETWORK, sizeof(_TTYS_NETWORK) - 1) && isspace((unsigned char)p[sizeof(_TTYS_NETWORK) - 1]))
    tty.ty_status |= TTY_NETWORK;
   p = skip(p);
  }
 }

 for (; *p; p = skip(p)) {
  if (!strncmp(p, _TTYS_OFF, sizeof(_TTYS_OFF) - 1) && isspace((unsigned char)p[sizeof(_TTYS_OFF) - 1]))
   tty.ty_status &= ~TTY_ON;
  else if (!strncmp(p, _TTYS_ON, sizeof(_TTYS_ON) - 1) && isspace((unsigned char)p[sizeof(_TTYS_ON) - 1]))
   tty.ty_status |= TTY_ON;
  else if (!strncmp(p, _TTYS_ONIFCONSOLE, sizeof(_TTYS_ONIFCONSOLE) - 1) && isspace((unsigned char)p[sizeof(_TTYS_ONIFCONSOLE) - 1]))
   tty.ty_status |= auto_tty_status(tty.ty_name);
  else if (!strncmp(p, _TTYS_ONIFEXISTS, sizeof(_TTYS_ONIFEXISTS) - 1) && isspace((unsigned char)p[sizeof(_TTYS_ONIFEXISTS) - 1]))
   tty.ty_status |= auto_exists_status(tty.ty_name);
  else if (!strncmp(p, _TTYS_SECURE, sizeof(_TTYS_SECURE) - 1) && isspace((unsigned char)p[sizeof(_TTYS_SECURE) - 1]))
   tty.ty_status |= TTY_SECURE;
  else if (!strncmp(p, _TTYS_INSECURE, sizeof(_TTYS_INSECURE) - 1) && isspace((unsigned char)p[sizeof(_TTYS_INSECURE) - 1]))
   tty.ty_status &= ~TTY_SECURE;
  else if (!strncmp(p, _TTYS_DIALUP, sizeof(_TTYS_DIALUP) - 1) && isspace((unsigned char)p[sizeof(_TTYS_DIALUP) - 1]))
   tty.ty_status |= TTY_DIALUP;
  else if (!strncmp(p, _TTYS_NETWORK, sizeof(_TTYS_NETWORK) - 1) && isspace((unsigned char)p[sizeof(_TTYS_NETWORK) - 1]))
   tty.ty_status |= TTY_NETWORK;
  else if (!strncmp(p, _TTYS_WINDOW, sizeof(_TTYS_WINDOW) - 1) && p[sizeof(_TTYS_WINDOW) - 1] == '=')
   tty.ty_window = value(p);
  else if (!strncmp(p, _TTYS_GROUP, sizeof(_TTYS_GROUP) - 1) && p[sizeof(_TTYS_GROUP) - 1] == '=')
   tty.ty_group = value(p);
  else
   break;
 }

 if (zapchar == '#' || *p == '#')
  while ((c = *++p) == ' ' || c == '\t')
   ;
 tty.ty_comment = p;
 if (*p == 0)
  tty.ty_comment = 0;
 if ((p = strchr(p, '\n')))
  *p = '\0';
 return (&tty);
}
