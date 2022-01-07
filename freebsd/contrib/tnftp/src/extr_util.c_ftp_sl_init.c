
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringList ;


 int err (int,char*) ;
 int * sl_init () ;

StringList *
ftp_sl_init(void)
{
 StringList *p;

 p = sl_init();
 if (p == ((void*)0))
  err(1, "Unable to allocate memory for stringlist");
 return (p);
}
