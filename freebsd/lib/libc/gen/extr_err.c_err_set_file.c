
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* err_file ;
 void* stderr ;

void
err_set_file(void *fp)
{
 if (fp)
  err_file = fp;
 else
  err_file = stderr;
}
