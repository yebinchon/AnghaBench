
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EX_USAGE ;
 char* ErrBuf ;
 scalar_t__ ExitVal ;
 scalar_t__ LMTPMode ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char*) ;
 int stderr ;

void
flush_error()
{
 if (LMTPMode)
  printf("%s\r\n", ErrBuf);
 else
 {
  if (ExitVal != EX_USAGE)
   (void) fprintf(stderr, "mail.local: ");
  fprintf(stderr, "%s\n", ErrBuf);
 }
}
