
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int token_t ;
struct in_addr {int s_addr; } ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int AUT_IN_ADDR ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_in_addr(struct in_addr *internet_addr)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(uint32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_IN_ADDR);
 ADD_MEM(dptr, &internet_addr->s_addr, sizeof(uint32_t));

 return (t);
}
