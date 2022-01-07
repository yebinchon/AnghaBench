
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

__attribute__((used)) static char *
next_token(char **string)
{
 char *token;

 token = strsep(string, " \t");
 while (token != ((void*)0) && *token == '\0')
  token = strsep(string, " \t");

 return (token);
}
