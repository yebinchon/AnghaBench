
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getprogname () ;

int
main(void)
{
 const char * progname;

 progname = getprogname();
 return progname == ((void*)0);
}
