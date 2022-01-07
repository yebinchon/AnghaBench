
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int AUT_SOCKINET128 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_sock_inet128(struct sockaddr_in6 *so)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, 3 * sizeof(u_char) + sizeof(u_int16_t) +
     4 * sizeof(u_int32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_SOCKINET128);





 ADD_U_CHAR(dptr, 0);
 ADD_U_CHAR(dptr, so->sin6_family);

 ADD_U_INT16(dptr, so->sin6_port);
 ADD_MEM(dptr, &so->sin6_addr, 4 * sizeof(uint32_t));

 return (t);
}
