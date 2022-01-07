
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

const char *flags2str(int flags)
{
 static const struct ftab {
  const char *name;
  int value;
 } flagtab[] = {
  { "NUM", 130 },
  { "STR", 128 },
  { "DONTFREE", 133 },
  { "CON", 136 },
  { "ARR", 137 },
  { "FCN", 132 },
  { "FLD", 131 },
  { "REC", 129 },
  { "CONVC", 135 },
  { "CONVO", 134 },
  { ((void*)0), 0 }
 };
 static char buf[100];
 int i;
 char *cp = buf;

 for (i = 0; flagtab[i].name != ((void*)0); i++) {
  if ((flags & flagtab[i].value) != 0) {
   if (cp > buf)
    *cp++ = '|';
   strcpy(cp, flagtab[i].name);
   cp += strlen(cp);
  }
 }

 return buf;
}
