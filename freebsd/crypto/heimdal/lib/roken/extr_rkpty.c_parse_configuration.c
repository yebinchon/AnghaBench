
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {unsigned int lineno; char* str; int type; struct command* next; } ;
typedef int s ;
typedef int FILE ;


 int CMD_EXPECT ;
 int CMD_PASSWORD ;
 int CMD_SEND ;
 struct command* calloc (int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,...) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char* iscmd (char*,char*) ;
 struct command** next ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static void
parse_configuration(const char *fn)
{
    struct command *c;
    char s[1024];
    char *str;
    unsigned int lineno = 0;
    FILE *cmd;

    cmd = fopen(fn, "r");
    if (cmd == ((void*)0))
 err(1, "open: %s", fn);

    while (fgets(s, sizeof(s), cmd) != ((void*)0)) {

 s[strcspn(s, "#\n")] = '\0';
 lineno++;

 c = calloc(1, sizeof(*c));
 if (c == ((void*)0))
     errx(1, "malloc");

 c->lineno = lineno;
 (*next) = c;
 next = &(c->next);

 if ((str = iscmd(s, "expect ")) != ((void*)0)) {
     c->type = CMD_EXPECT;
     c->str = str;
 } else if ((str = iscmd(s, "send ")) != ((void*)0)) {
     c->type = CMD_SEND;
     c->str = str;
 } else if ((str = iscmd(s, "password ")) != ((void*)0)) {
     c->type = CMD_PASSWORD;
     c->str = str;
 } else
     errx(1, "Invalid command on line %d: %s", lineno, s);
    }

    fclose(cmd);
}
