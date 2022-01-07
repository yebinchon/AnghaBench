
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (scalar_t__) ;
 int error (char*,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 char* strerror (int) ;
 scalar_t__ strlen (char const*) ;

void
perror_with_name (char *string)
{

  extern int errno;

  const char *err;
  char *combined;

  err = strerror (errno);
  if (err == ((void*)0))
    err = "unknown error";

  combined = (char *) alloca (strlen (err) + strlen (string) + 3);
  strcpy (combined, string);
  strcat (combined, ": ");
  strcat (combined, err);

  error ("%s.", combined);
}
