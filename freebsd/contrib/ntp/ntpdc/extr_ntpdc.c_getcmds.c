
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int docmd (char*) ;
 int free (char*) ;
 scalar_t__ interactive ;
 char* ntp_readline (int*) ;
 int ntp_readline_init (int *) ;
 int ntp_readline_uninit () ;
 int * prompt ;

__attribute__((used)) static void
getcmds(void)
{
 char * line;
 int count;

 ntp_readline_init(interactive ? prompt : ((void*)0));

 for (;;) {
  line = ntp_readline(&count);
  if (((void*)0) == line)
   break;
  docmd(line);
  free(line);
 }

 ntp_readline_uninit();
}
