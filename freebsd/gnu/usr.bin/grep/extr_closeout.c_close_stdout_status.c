
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ __fpending (int ) ;
 int errno ;
 int error (int,int,char*,char const*,...) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ file_name ;
 char* quotearg_colon (scalar_t__) ;
 int stdout ;

void
close_stdout_status (int status)
{
  int e = ferror (stdout) ? 0 : -1;






  if (fclose (stdout) != 0)
    e = errno;

  if (0 < e)
    {
      char const *write_error = _("write error");
      if (file_name)
 error (status, e, "%s: %s", quotearg_colon (file_name), write_error);
      else
 error (status, e, "%s", write_error);
    }
}
