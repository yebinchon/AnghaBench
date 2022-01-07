
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPIN_SIZE ;
 char* spin ;
 char* spin_cp ;

__attribute__((used)) static char
spin_char(void)
{
 char ch;

 if (*spin_cp == '\0')
  spin_cp = spin;
 ch = *spin_cp;


 if (++spin_cp >= (spin + SPIN_SIZE))
  spin_cp = spin;

 return (ch);
}
