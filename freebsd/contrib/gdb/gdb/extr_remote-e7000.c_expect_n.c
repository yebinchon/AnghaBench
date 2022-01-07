
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTRLC ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int getkey () ;
 scalar_t__ kbhit () ;
 int printf_unfiltered (char*,...) ;
 int putchar_e7000 (int ) ;
 int putchar_unfiltered (int) ;
 int quit_flag ;
 int readchar (int) ;

__attribute__((used)) static int
expect_n (char **strings)
{
  char *(ptr[10]);
  int n;
  int c;
  char saveaway[100];
  char *buffer = saveaway;


  for (n = 0; strings[n]; n++)
    {
      ptr[n] = strings[n];
    }

  while (1)
    {
      int i;
      int gotone = 0;

      c = readchar (1);
      if (c == -1)
 {
   printf_unfiltered ("[waiting for e7000...]\n");
 }
      if (quit_flag)
 {
   putchar_e7000 (CTRLC);
   quit_flag = 0;
 }

      for (i = 0; i < n; i++)
 {
   if (c == ptr[i][0])
     {
       ptr[i]++;
       if (ptr[i][0] == 0)
  {

    return i;
  }
       gotone = 1;
     }
   else
     {
       ptr[i] = strings[i];
     }
 }

      if (gotone)
 {

   *buffer++ = c;
 }
      else
 {
   if (buffer != saveaway)
     {
       *buffer++ = 0;
       printf_unfiltered ("%s", buffer);
       buffer = saveaway;
     }
   if (c != -1)
     {
       putchar_unfiltered (c);
       gdb_flush (gdb_stdout);
     }
 }
    }
}
