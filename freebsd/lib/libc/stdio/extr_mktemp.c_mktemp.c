
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _mktemp (char*) ;

char *
mktemp(char *path)
{
 return (_mktemp(path));
}
