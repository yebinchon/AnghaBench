
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,long) ;
 int AUT_SEQ ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_seq(long audit_count)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_SEQ);
 ADD_U_INT32(dptr, audit_count);

 return (t);
}
