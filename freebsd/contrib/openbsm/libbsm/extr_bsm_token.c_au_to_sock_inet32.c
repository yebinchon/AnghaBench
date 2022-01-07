
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
typedef int token_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int AUT_SOCKINET32 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_sock_inet32(struct sockaddr_in *so)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 uint16_t family;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 2 * sizeof(uint16_t) +
     sizeof(uint32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_SOCKINET32);
 family = so->sin_family;
 ADD_U_INT16(dptr, family);
 ADD_MEM(dptr, &so->sin_port, sizeof(uint16_t));
 ADD_MEM(dptr, &so->sin_addr.s_addr, sizeof(uint32_t));

 return (t);
}
