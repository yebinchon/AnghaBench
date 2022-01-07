
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l ;
typedef int ULONGEST ;


 char* get_cell () ;
 int sprintf (char*,char*,unsigned short,...) ;
 int thirty_two ;

char *
phex (ULONGEST l, int sizeof_l)
{
  char *str;
  switch (sizeof_l)
    {
    case 8:
      str = get_cell ();
      sprintf (str, "%08lx%08lx",
        (unsigned long) (l >> thirty_two),
        (unsigned long) (l & 0xffffffff));
      break;
    case 4:
      str = get_cell ();
      sprintf (str, "%08lx", (unsigned long) l);
      break;
    case 2:
      str = get_cell ();
      sprintf (str, "%04x", (unsigned short) (l & 0xffff));
      break;
    default:
      str = phex (l, sizeof (l));
      break;
    }
  return str;
}
