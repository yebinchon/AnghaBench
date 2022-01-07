
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int _ (char*) ;
 int isatty (int ) ;
 int message_error (int ) ;

extern bool
is_tty_stdin(void)
{
 const bool ret = isatty(STDIN_FILENO);

 if (ret)
  message_error(_("Compressed data cannot be read from "
    "a terminal"));

 return ret;
}
