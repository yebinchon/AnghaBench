
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int STR0 ;
 int STR1 ;
 int STRstatus ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 char* getenv (char*) ;
 int setcopy (int ,int ,int ) ;
 char* short2str (int *) ;
 int tgetent (char*,char*) ;
 int xprintf (char*,char*) ;

void
dotermname(Char **v, struct command *c)
{
    char *termtype;



    char termcap_buffer[2048];

    USE(c);

    termtype = (v[1] == ((void*)0) ? getenv("TERM") : short2str(v[1]));
    if (termtype == ((void*)0)) {



 setcopy(STRstatus, STR1, VAR_READWRITE);
 return;
    }
    if (tgetent(termcap_buffer, termtype) == 1) {
 xprintf("%s\n", termtype);
 setcopy(STRstatus, STR0, VAR_READWRITE);
    } else
 setcopy(STRstatus, STR1, VAR_READWRITE);
}
