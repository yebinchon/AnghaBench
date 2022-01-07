
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXARGS ;
 int * args ;
 int strdup (char*) ;

__attribute__((used)) static int
insert(int *argcp, char *buf)
{

 if (*argcp >= MAXARGS)
  return 1;
 args[(*argcp)++] = strdup(buf);
 return 0;
}
