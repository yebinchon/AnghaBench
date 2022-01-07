
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* strmod_linkinfo; } ;


 int mod_install (int *) ;
 int modlinkage ;
 TYPE_1__ modlstrmod ;
 char* rcsid ;
 int strlcpy (char*,char*,unsigned int) ;
 int strlen (char*) ;

int
_init(
     void
     )
{
 static char revision[] = "4.6";
 char *s, *S;
 char *t;


 t = rcsid;







 s = revision;
 if (*s == '$')
 {




  while (*s && (*s != ' '))
  {
   s++;
  }
  if (*s == ' ') s++;
 }

 t = modlstrmod.strmod_linkinfo;
 while (*t && (*t != ' '))
 {
  t++;
 }
 if (*t == ' ') t++;

 S = s;
 while (*S && (((*S >= '0') && (*S <= '9')) || (*S == '.')))
 {
  S++;
 }

 if (*s && *t && (S > s))
 {
  if (strlen(t) >= (S - s))
  {
   strlcpy(t, s, (unsigned)(S - s));
  }
 }
 return (mod_install(&modlinkage));
}
