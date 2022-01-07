
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_NEED_DICT ;
 int Z_VERSION_ERROR ;
 char const* zError (int) ;

const char *
z_strerror(int err)
{
 int i = Z_NEED_DICT - err;

 if (i < 0 || i > Z_NEED_DICT - Z_VERSION_ERROR)
  return ("unknown error");

 return (zError(err));
}
