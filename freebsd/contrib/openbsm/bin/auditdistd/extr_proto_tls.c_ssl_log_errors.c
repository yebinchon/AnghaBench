
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_error_string (unsigned long,int *) ;
 unsigned long ERR_get_error () ;
 int pjdlog_error (char*,int ) ;

__attribute__((used)) static void
ssl_log_errors(void)
{
 unsigned long error;

 while ((error = ERR_get_error()) != 0)
  pjdlog_error("SSL error: %s", ERR_error_string(error, ((void*)0)));
}
