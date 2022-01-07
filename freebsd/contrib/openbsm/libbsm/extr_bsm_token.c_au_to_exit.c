
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,int) ;
 int AUT_EXIT ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_exit(int retval, int err)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 2 * sizeof(u_int32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_EXIT);
 ADD_U_INT32(dptr, err);
 ADD_U_INT32(dptr, retval);

 return (t);
}
