
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BUFFER_GROWFACTOR ;
 int FLOAT_SPRINTF_TRY_LIMIT ;
 int free (char*) ;
 int hex_to_dec (char const) ;
 char* malloc (int) ;
 int memset (double*,int ,int) ;
 int snprintf (char*,size_t,char*,double) ;

__attribute__((used)) static char *
decode_fp_to_double(const char *p, size_t len)
{
 double f;
 size_t rtn_len, limit, i;
 int byte;
 char *rtn;

 if (p == ((void*)0) || len == 0 || len % 2 != 0 || len / 2 > sizeof(double))
  return (((void*)0));

 memset(&f, 0, sizeof(double));

 for (i = 0; i < len / 2; ++i) {
  byte = hex_to_dec(p[len - i * 2 - 1]) +
      hex_to_dec(p[len - i * 2 - 2]) * 16;

  if (byte < 0 || byte > 255)
   return (((void*)0));


  ((unsigned char *)&f)[i] = (unsigned char)(byte);




 }

 rtn_len = 64;
 limit = 0;
again:
 if ((rtn = malloc(sizeof(char) * rtn_len)) == ((void*)0))
  return (((void*)0));

 if (snprintf(rtn, rtn_len, "%fld", f) >= (int)rtn_len) {
  free(rtn);
  if (limit++ > FLOAT_SPRINTF_TRY_LIMIT)
   return (((void*)0));
  rtn_len *= BUFFER_GROWFACTOR;
  goto again;
 }

 return rtn;
}
