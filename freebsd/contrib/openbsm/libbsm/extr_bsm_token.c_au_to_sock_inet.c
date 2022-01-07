
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
struct sockaddr_in {int dummy; } ;


 int * au_to_sock_inet32 (struct sockaddr_in*) ;

token_t *
au_to_sock_inet(struct sockaddr_in *so)
{

 return (au_to_sock_inet32(so));
}
