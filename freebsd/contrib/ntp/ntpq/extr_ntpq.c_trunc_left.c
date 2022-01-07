
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

const char *
trunc_left(
 const char * src,
 size_t width
 )
{
 size_t sl;
 char * out;


 sl = strlen(src);
 if (sl > width && LIB_BUFLENGTH - 1 > width && width > 1) {
  LIB_GETBUF(out);
  out[0] = '_';
  memcpy(&out[1], &src[sl + 1 - width], width);

  return out;
 }

 return src;
}
