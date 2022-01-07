
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;


 size_t COUNTOF (char**) ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int ,char*,size_t) ;
 char** symb ;

const char *
symbname(
 u_short token
 )
{
 char *name;

 if (token < COUNTOF(symb) && symb[token] != ((void*)0)) {
  name = symb[token];
 } else {
  LIB_GETBUF(name);
  snprintf(name, LIB_BUFLENGTH, "%d", token);
 }

 return name;
}
