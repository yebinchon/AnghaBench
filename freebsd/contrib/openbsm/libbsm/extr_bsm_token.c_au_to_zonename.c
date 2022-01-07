
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_STRING (int *,char const*,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 int AUT_ZONENAME ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

token_t *
au_to_zonename(const char *zonename)
{
 u_char *dptr = ((void*)0);
 u_int16_t textlen;
 token_t *t;

 textlen = strlen(zonename) + 1;
 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) + textlen);
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_ZONENAME);
 ADD_U_INT16(dptr, textlen);
 ADD_STRING(dptr, zonename, textlen);
 return (t);
}
