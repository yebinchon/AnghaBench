
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t YYTRANSLATE (int) ;
 char const** yytname ;

const char *
token_name(
 int token
 )
{
 return yytname[YYTRANSLATE(token)];
}
