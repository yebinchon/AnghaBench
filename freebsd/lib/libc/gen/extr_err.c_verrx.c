
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char* _getprogname () ;
 int err_exit (int) ;
 int * err_file ;
 int err_set_file (int *) ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int vfprintf (int *,char const*,int ) ;

void
verrx(int eval, const char *fmt, va_list ap)
{
 if (err_file == ((void*)0))
  err_set_file(((void*)0));
 fprintf(err_file, "%s: ", _getprogname());
 if (fmt != ((void*)0))
  vfprintf(err_file, fmt, ap);
 fprintf(err_file, "\n");
 if (err_exit)
  err_exit(eval);
 exit(eval);
}
