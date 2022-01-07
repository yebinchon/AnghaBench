
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _thread_exitf (char const*,int,char*,char const*) ;

void
_thread_exit(const char *fname, int lineno, const char *msg)
{

 _thread_exitf(fname, lineno, "%s", msg);
}
