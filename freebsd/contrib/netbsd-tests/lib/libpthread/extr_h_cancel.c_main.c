
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str2 ;
typedef int str1 ;


 int PTHREAD_CANCEL_DISABLE ;
 int PTHREAD_CANCEL_ENABLE ;
 int STDOUT_FILENO ;
 int exit (int) ;
 int printf (char*) ;
 int pthread_cancel (int ) ;
 int pthread_self () ;
 int pthread_setcancelstate (int ,int *) ;
 int write (int ,char*,int) ;

int
main(void)
{
 char str1[] = "You should see this.\n";
 char str2[] = "You should not see this.\n";





 pthread_cancel(pthread_self());

 pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, ((void*)0));

 write(STDOUT_FILENO, str1, sizeof(str1)-1);

 pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, ((void*)0));

 write(STDOUT_FILENO, str2, sizeof(str2)-1);

 exit(1);
}
