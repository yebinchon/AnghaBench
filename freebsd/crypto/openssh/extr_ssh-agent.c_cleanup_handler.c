
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int cleanup_socket () ;
 int pkcs11_terminate () ;

__attribute__((used)) static void
cleanup_handler(int sig)
{
 cleanup_socket();



 _exit(2);
}
