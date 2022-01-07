
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* icatalloc (char*,char*) ;

__attribute__((used)) static char *
icpyalloc (char *string)
{
  return icatalloc((char *) ((void*)0), string);
}
