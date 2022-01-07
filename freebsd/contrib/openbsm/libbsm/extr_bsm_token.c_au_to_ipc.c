
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_U_CHAR (int *,char) ;
 int ADD_U_INT32 (int *,int) ;
 char AUT_IPC ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_ipc(char type, int id)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, 2 * sizeof(u_char) + sizeof(u_int32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_IPC);
 ADD_U_CHAR(dptr, type);
 ADD_U_INT32(dptr, id);

 return (t);
}
