
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_NOLOAD ;
 int dlerror () ;
 void* dlopen (char*,int ) ;
 int errx (int,char*,int ) ;
 int printf (char*) ;

int
main(void)
{
 void *handle;

 handle = dlopen("libpthread.so", RTLD_NOLOAD);
 if (handle == ((void*)0))
  errx(1, "%s", dlerror());

 printf("libpthread loaded successfully\n");
 return 0;
}
