
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int _ (char*) ;
 int isatty (int ) ;
 int message_error (int ) ;

extern bool
is_tty_stdout(void)
{
 const bool ret = isatty(STDOUT_FILENO);

 if (ret)
  message_error(_("Compressed data cannot be written to "
    "a terminal"));

 return ret;
}
