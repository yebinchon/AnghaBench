
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int token_t ;


 int ADD_MEM (int *,char const*,size_t) ;
 int ADD_U_CHAR (int *,char) ;

 size_t AUR_BYTE_SIZE ;

 size_t AUR_INT32_SIZE ;

 size_t AUR_INT64_SIZE ;

 size_t AUR_SHORT_SIZE ;
 char AUT_DATA ;
 int EINVAL ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int errno ;

token_t *
au_to_data(char unit_print, char unit_type, char unit_count, const char *p)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 size_t datasize, totdata;


 switch (unit_type) {
 case 131:

  datasize = AUR_BYTE_SIZE;
  break;

 case 128:
  datasize = AUR_SHORT_SIZE;
  break;

 case 130:

  datasize = AUR_INT32_SIZE;
  break;

 case 129:
  datasize = AUR_INT64_SIZE;
  break;

 default:
  errno = EINVAL;
  return (((void*)0));
 }

 totdata = datasize * unit_count;

 GET_TOKEN_AREA(t, dptr, 4 * sizeof(u_char) + totdata);
 if (t == ((void*)0))
  return (((void*)0));





 ADD_U_CHAR(dptr, AUT_DATA);
 ADD_U_CHAR(dptr, unit_print);
 ADD_U_CHAR(dptr, unit_type);
 ADD_U_CHAR(dptr, unit_count);
 ADD_MEM(dptr, p, totdata);

 return (t);
}
