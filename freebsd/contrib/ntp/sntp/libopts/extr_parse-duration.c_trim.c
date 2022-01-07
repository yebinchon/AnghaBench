
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 scalar_t__ isspace (unsigned char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
trim (char * pz)
{

  while (isspace ((unsigned char)*pz))
    pz++;


  {
    char * pe = pz + strlen (pz);
    while ((pe > pz) && isspace ((unsigned char)pe[-1]))
      pe--;
    *pe = NUL;
  }

  return pz;
}
