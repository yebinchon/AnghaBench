
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t COUNTOF (char**) ;
 int LOWEST_KEYWORD_ID ;
 char** keyword_text ;

const char *
keyword(
 int token
 )
{
 size_t i;
 const char *text;

 i = token - LOWEST_KEYWORD_ID;

 if (i < COUNTOF(keyword_text))
  text = keyword_text[i];
 else
  text = ((void*)0);

 return (text != ((void*)0))
     ? text
     : "(keyword not found)";
}
