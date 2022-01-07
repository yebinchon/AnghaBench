
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_buf ;


 int H_ENTER ;
 int MAXEDITLINE ;
 int add_history (char*) ;
 char* el_gets (int ,int*) ;
 char* estrdup (char const*) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int fputs (char*,int ) ;
 int hev ;
 int history (int ,int *,int ,char const*) ;
 char* lineedit_prompt ;
 int ntp_el ;
 int ntp_hist ;
 int ntp_readline_initted ;
 char* readline (char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;

char *
ntp_readline(
 int * pcount
 )
{
 char * line;







 if (!ntp_readline_initted)
  return ((void*)0);

 *pcount = 0;
 if (!line)
  fputs("\n", stderr);

 return line;
}
