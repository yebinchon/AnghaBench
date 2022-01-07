
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUIT ;
 char* alloca (int) ;
 int fputc_unfiltered (int,int ) ;
 int gdb_stdout ;
 int sr_readchar () ;
 int strlen (char*) ;

int
gr_multi_scan (char *list[], int passthrough)
{
  char *swallowed = ((void*)0);
  char *swallowed_p = swallowed;
  int ch;
  int ch_handled;
  int i;
  int string_count;
  int max_length;
  char **plist;




  for (max_length = string_count = i = 0;
       list[i] != ((void*)0);
       ++i, ++string_count)
    {
      int length = strlen (list[i]);

      if (length > max_length)
 max_length = length;
    }


  if (string_count == 0)
    return (-1);



  swallowed_p = swallowed = alloca (max_length << 1);


  plist = (char **) alloca (string_count * sizeof (*plist));


  for (i = 0; i < string_count; ++i)
    plist[i] = list[i];

  for (ch = sr_readchar (); ; ch = sr_readchar ())
    {
      QUIT;
      ch_handled = 0;

      for (i = 0; i < string_count; ++i)
 {
   if (ch == *plist[i] || *plist[i] == '?')
     {
       ++plist[i];
       if (*plist[i] == '\0')
  return (i);

       if (!ch_handled)
  *swallowed_p++ = ch;

       ch_handled = 1;
     }
   else
     plist[i] = list[i];
 }

      if (!ch_handled)
 {
   char *p;


   if (passthrough)
     {
       for (p = swallowed; p < swallowed_p; ++p)
  fputc_unfiltered (*p, gdb_stdout);

       fputc_unfiltered (ch, gdb_stdout);
     }

   swallowed_p = swallowed;
 }
    }




}
