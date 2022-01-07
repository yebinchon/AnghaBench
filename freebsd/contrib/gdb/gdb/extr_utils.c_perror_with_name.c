
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (scalar_t__) ;
 int bfd_error_no_error ;
 int bfd_set_error (int ) ;
 scalar_t__ errno ;
 int error (char*,char*) ;
 char* safe_strerror (scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
perror_with_name (const char *string)
{
  char *err;
  char *combined;

  err = safe_strerror (errno);
  combined = (char *) alloca (strlen (err) + strlen (string) + 3);
  strcpy (combined, string);
  strcat (combined, ": ");
  strcat (combined, err);




  bfd_set_error (bfd_error_no_error);
  errno = 0;

  error ("%s.", combined);
}
