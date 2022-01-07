
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 int cleanup_socket () ;

void
cleanup_exit(int i)
{
 cleanup_socket();
 _exit(i);
}
