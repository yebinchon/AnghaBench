
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef char Char ;


 int FMT_PROMPT ;
 char* Prompt ;
 char* RPrompt ;
 int STRprompt ;
 int STRprompt2 ;
 int STRprompt3 ;
 int STRrprompt ;
 int SetAttributes (int ) ;
 int editing ;
 int flush () ;
 int putraw (char) ;
 int putwraw (int ) ;
 int time (int *) ;
 char* tprintf (int ,char const*,char const*,int ,int *) ;
 char* varval (int ) ;
 int xfree (char*) ;

void
printprompt(int promptno, const char *str)
{
    static const Char *ocp = ((void*)0);
    static const char *ostr = ((void*)0);
    time_t lclock = time(((void*)0));
    const Char *cp;

    switch (promptno) {
    default:
    case 0:
 cp = varval(STRprompt);
 break;
    case 1:
 cp = varval(STRprompt2);
 break;
    case 2:
 cp = varval(STRprompt3);
 break;
    case 3:
 if (ocp != ((void*)0)) {
     cp = ocp;
     str = ostr;
 }
 else
     cp = varval(STRprompt);
 break;
    }

    if (promptno < 2) {
 ocp = cp;
 ostr = str;
    }

    xfree(Prompt);
    Prompt = ((void*)0);
    Prompt = tprintf(FMT_PROMPT, cp, str, lclock, ((void*)0));
    if (!editing) {
 for (cp = Prompt; *cp ; )
     (void) putwraw(*cp++);
 SetAttributes(0);
 flush();
    }

    xfree(RPrompt);
    RPrompt = ((void*)0);
    if (promptno == 0) {
 cp = varval(STRrprompt);
 RPrompt = tprintf(FMT_PROMPT, cp, ((void*)0), lclock, ((void*)0));

 if (!editing && RPrompt[0] != '\0') {
     for (cp = RPrompt; *cp ; )
  (void) putwraw(*cp++);
     SetAttributes(0);
     putraw(' ');
     flush();
 }
    }
}
