
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUIRE (char const*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
strdup(
 const char *s
 )
{
 size_t octets;
 char * cp;

 REQUIRE(s);
 octets = strlen(s) + 1;
 if ((cp = malloc(octets)) == ((void*)0))
  return ((void*)0);
 memcpy(cp, s, octets);

 return cp;
}
