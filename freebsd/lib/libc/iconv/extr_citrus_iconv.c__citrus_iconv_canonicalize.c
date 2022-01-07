
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PATH_MAX ;
 int _citrus_esdb_alias (char const*,char*,size_t) ;
 char* calloc (size_t,int) ;

const char
*_citrus_iconv_canonicalize(const char *name)
{
 char *buf;

 if ((buf = calloc((size_t)PATH_MAX, sizeof(*buf))) == ((void*)0))
  return (((void*)0));
 _citrus_esdb_alias(name, buf, (size_t)PATH_MAX);
 return (buf);
}
