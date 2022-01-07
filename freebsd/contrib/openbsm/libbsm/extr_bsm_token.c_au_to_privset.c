
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_STRING (int *,char*,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 int AUT_PRIV ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (char*) ;

token_t *
au_to_privset(char *privtypestr, char *privstr)
{
 u_int16_t type_len, priv_len;
 u_char *dptr;
 token_t *t;

 type_len = strlen(privtypestr) + 1;
 priv_len = strlen(privstr) + 1;
 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
     sizeof(u_int16_t) + type_len + priv_len);
 if (t == ((void*)0))
  return (((void*)0));
 ADD_U_CHAR(dptr, AUT_PRIV);
 ADD_U_INT16(dptr, type_len);
 ADD_STRING(dptr, privtypestr, type_len);
 ADD_U_INT16(dptr, priv_len);
 ADD_STRING(dptr, privstr, priv_len);
 return (t);
}
