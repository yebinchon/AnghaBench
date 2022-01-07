
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ta_fgcolor; int ta_bgcolor; } ;
typedef TYPE_1__ teken_attr_t ;
struct env_var {int ev_name; } ;
typedef int buf ;


 int CMD_OK ;
 int EV_NOHOOK ;
 scalar_t__ color_name_to_teken (void const*,int*) ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 scalar_t__ errno ;
 int printf (char*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strtol (void const*,char**,int ) ;
 int teken ;
 TYPE_1__* teken_get_defattr (int *) ;
 int teken_set_defattr (int *,TYPE_1__*) ;

__attribute__((used)) static int
efi_set_colors(struct env_var *ev, int flags, const void *value)
{
 int val = 0;
 char buf[2];
 const void *evalue;
 const teken_attr_t *ap;
 teken_attr_t a;

 if (value == ((void*)0))
  return (CMD_OK);

 if (color_name_to_teken(value, &val)) {
  snprintf(buf, sizeof (buf), "%d", val);
  evalue = buf;
 } else {
  char *end;

  errno = 0;
  val = (int)strtol(value, &end, 0);
  if (errno != 0 || *end != '\0') {
   printf("Allowed values are either ansi color name or "
       "number from range [0-7].\n");
   return (CMD_OK);
  }
  evalue = value;
 }

 ap = teken_get_defattr(&teken);
 a = *ap;
 if (strcmp(ev->ev_name, "teken.fg_color") == 0) {

  if (ap->ta_fgcolor == val)
   return (CMD_OK);
  a.ta_fgcolor = val;
 }
 if (strcmp(ev->ev_name, "teken.bg_color") == 0) {

  if (ap->ta_bgcolor == val)
   return (CMD_OK);
  a.ta_bgcolor = val;
 }
 env_setenv(ev->ev_name, flags | EV_NOHOOK, evalue, ((void*)0), ((void*)0));
 teken_set_defattr(&teken, &a);
 return (CMD_OK);
}
