
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct togglelist {int* variable; char* actionexplanation; int (* handler ) (int) ;} ;
struct setlist {char* name; char* help; scalar_t__* charp; int (* handler ) (char*) ;} ;
typedef scalar_t__ cc_t ;


 scalar_t__ Ambiguous (void*) ;
 struct togglelist* GETTOGGLE (char*) ;
 struct setlist* Setlist ;
 int _POSIX_VDISABLE ;
 char* control (scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 struct setlist* getset (char*) ;
 scalar_t__ isprefix (char*,char*) ;
 int printf (char*,...) ;
 int settogglehelp (int) ;
 int slc_check () ;
 int special (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int) ;
 int stub2 (char*) ;

__attribute__((used)) static int
setcmd(int argc, char *argv[])
{
    int value;
    struct setlist *ct;
    struct togglelist *c;

    if (argc < 2 || argc > 3) {
 printf("Format is 'set Name Value'\n'set ?' for help.\n");
 return 0;
    }
    if ((argc == 2) && (isprefix(argv[1], "?") || isprefix(argv[1], "help"))) {
 for (ct = Setlist; ct->name; ct++)
     printf("%-15s %s\n", ct->name, ct->help);
 printf("\n");
 settogglehelp(1);
 printf("%-15s %s\n", "?", "display help information");
 return 0;
    }

    ct = getset(argv[1]);
    if (ct == 0) {
 c = GETTOGGLE(argv[1]);
 if (c == 0) {
     fprintf(stderr, "'%s': unknown argument ('set ?' for help).\n",
   argv[1]);
     return 0;
 } else if (Ambiguous((void *)c)) {
     fprintf(stderr, "'%s': ambiguous argument ('set ?' for help).\n",
   argv[1]);
     return 0;
 }
 if (c->variable) {
     if ((argc == 2) || (strcmp("on", argv[2]) == 0))
  *c->variable = 1;
     else if (strcmp("off", argv[2]) == 0)
  *c->variable = 0;
     else {
  printf("Format is 'set togglename [on|off]'\n'set ?' for help.\n");
  return 0;
     }
     if (c->actionexplanation) {
  printf("%s %s.\n", *c->variable? "Will" : "Won't",
       c->actionexplanation);
     }
 }
 if (c->handler)
     (*c->handler)(1);
    } else if (argc != 3) {
 printf("Format is 'set Name Value'\n'set ?' for help.\n");
 return 0;
    } else if (Ambiguous((void *)ct)) {
 fprintf(stderr, "'%s': ambiguous argument ('set ?' for help).\n",
   argv[1]);
 return 0;
    } else if (ct->handler) {
 (*ct->handler)(argv[2]);
 printf("%s set to \"%s\".\n", ct->name, (char *)ct->charp);
    } else {
 if (strcmp("off", argv[2])) {
     value = special(argv[2]);
 } else {
     value = _POSIX_VDISABLE;
 }
 *(ct->charp) = (cc_t)value;
 printf("%s character is '%s'.\n", ct->name, control(*(ct->charp)));
    }
    slc_check();
    return 1;
}
