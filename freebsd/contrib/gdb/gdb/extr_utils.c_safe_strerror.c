
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 char* strerror (int) ;

char *
safe_strerror (int errnum)
{
  char *msg;
  static char buf[32];

  msg = strerror (errnum);
  if (msg == ((void*)0))
    {
      sprintf (buf, "(undocumented errno %d)", errnum);
      msg = buf;
    }
  return (msg);
}
