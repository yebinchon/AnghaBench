
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int ADD_U_INT32 (int *,int) ;
 int AUT_TRAILER ;
 int AUT_TRAILER_MAGIC ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_trailer(int rec_size)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int16_t magic = AUT_TRAILER_MAGIC;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
     sizeof(u_int32_t));
 if (t == ((void*)0))
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_TRAILER);
 ADD_U_INT16(dptr, magic);
 ADD_U_INT32(dptr, rec_size);

 return (t);
}
