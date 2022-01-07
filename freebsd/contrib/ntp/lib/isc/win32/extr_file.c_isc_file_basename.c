
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUIRE (int ) ;
 char* strrchr (char const*,char) ;

const char *
isc_file_basename(const char *filename) {
 char *s;

 REQUIRE(filename != ((void*)0));

 s = strrchr(filename, '\\');
 if (s == ((void*)0))
  return (filename);
 return (s + 1);
}
