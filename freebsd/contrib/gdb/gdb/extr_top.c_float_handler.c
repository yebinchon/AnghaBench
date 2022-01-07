
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int error (char*) ;
 int signal (int ,void (*) (int)) ;

__attribute__((used)) static void
float_handler (int signo)
{


  signal (SIGFPE, float_handler);
  error ("Erroneous arithmetic operation.");
}
