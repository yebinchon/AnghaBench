
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fwrite (char*,int,int,int ) ;
 int immediate_quit ;
 int putchar (char) ;
 int readchar (int ) ;
 int stdout ;
 int timeout ;

__attribute__((used)) static void
expect (char *string, int discard)
{
  char *p = string;
  int c;

  immediate_quit++;
  while (1)
    {
      c = readchar (timeout);
      if (c == *p++)
 {
   if (*p == '\0')
     {
       immediate_quit--;
       return;
     }
 }
      else
 {
   if (!discard)
     {
       fwrite (string, 1, (p - 1) - string, stdout);
       putchar ((char) c);
       fflush (stdout);
     }
   p = string;
 }
    }
}
