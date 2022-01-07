
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nl_socket_alloc () ;
 int zero_socket ;

__attribute__((used)) static void alloc_zero_based_socket(void)
{
 zero_socket = nl_socket_alloc();
}
