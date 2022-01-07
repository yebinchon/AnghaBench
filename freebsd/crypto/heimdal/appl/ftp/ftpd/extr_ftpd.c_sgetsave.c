
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dologout (int) ;
 int perror_reply (int,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
sgetsave(char *s)
{
 char *new = strdup(s);

 if (new == ((void*)0)) {
  perror_reply(421, "Local resource failure: malloc");
  dologout(1);

 }
 return new;
}
