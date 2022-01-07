
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;
 int pthread_exit (int *) ;

int
main(void)
{
 printf("Test of pthread_exit() in main thread only.\n");

 pthread_exit(((void*)0));

 printf("You shouldn't see this.");
 exit(1);
}
