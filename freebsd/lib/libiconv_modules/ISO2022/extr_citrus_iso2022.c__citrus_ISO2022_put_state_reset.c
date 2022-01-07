
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int _ISO2022State ;
typedef int _ISO2022EncodingInfo ;


 int E2BIG ;
 int MB_LEN_MAX ;
 int _ISO2022_sputwchar (int *,int,char*,int,char**,int *,size_t*) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static int
_citrus_ISO2022_put_state_reset(_ISO2022EncodingInfo * __restrict ei,
    char * __restrict s, size_t n, _ISO2022State * __restrict psenc,
    size_t * __restrict nresult)
{
 char *result;
 char buf[MB_LEN_MAX];
 size_t len;
 int ret;


 ret = _ISO2022_sputwchar(ei, L'\0', buf, sizeof(buf), &result, psenc,
     &len);
 if (ret) {
  *nresult = len;
  return (ret);
 }

 if (sizeof(buf) < len || n < len-1) {

  *nresult = (size_t)-1;
  return (E2BIG);
 }

 memcpy(s, buf, len - 1);
 *nresult = len - 1;
 return (0);
}
