
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cbuf ;
 int reply (int,char*,int ) ;
 char* strchr (int ,char) ;

void
yyerror(char *s)
{
 char *cp;

 if ((cp = strchr(cbuf,'\n')))
  *cp = '\0';
 reply(500, "%s: command not understood.", cbuf);
}
