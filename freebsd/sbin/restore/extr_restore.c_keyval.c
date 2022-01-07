
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INOFND ;
 int MODECHG ;
 int NAMEFND ;
 int ONTAPE ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
keyval(int key)
{
 static char keybuf[32];

 (void) strcpy(keybuf, "|NIL");
 keybuf[0] = '\0';
 if (key & ONTAPE)
  (void) strcat(keybuf, "|ONTAPE");
 if (key & INOFND)
  (void) strcat(keybuf, "|INOFND");
 if (key & NAMEFND)
  (void) strcat(keybuf, "|NAMEFND");
 if (key & MODECHG)
  (void) strcat(keybuf, "|MODECHG");
 return (&keybuf[1]);
}
