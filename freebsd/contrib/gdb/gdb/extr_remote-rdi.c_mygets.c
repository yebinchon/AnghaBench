
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fgets (char*,int,int ) ;
 int stdin ;

__attribute__((used)) static char *
mygets (void *arg, char *buffer, int len)
{
  return fgets (buffer, len, stdin);
}
