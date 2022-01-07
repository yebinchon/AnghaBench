
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* index (char*,char) ;

__attribute__((used)) static void newline_to_null(char *str)
{
 char *term = index(str, '\n');
 if (term)
  *term = '\0';
}
