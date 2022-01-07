
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modelist {int (* handler ) (int ) ;int arg1; scalar_t__ needconnect; } ;


 scalar_t__ Ambiguous (struct modelist*) ;
 struct modelist* GETMODECMD (char*) ;
 int connected ;
 int fprintf (int ,char*,char*) ;
 int printf (char*) ;
 int stderr ;
 int stub1 (int ) ;

__attribute__((used)) static int
modecmd(int argc, char **argv)
{
    struct modelist *mt;

    if (argc != 2) {
 printf("'mode' command requires an argument\r\n");
 printf("'mode ?' for help.\r\n");
    } else if ((mt = GETMODECMD(argv[1])) == 0) {
 fprintf(stderr, "Unknown mode '%s' ('mode ?' for help).\r\n", argv[1]);
    } else if (Ambiguous(mt)) {
 fprintf(stderr, "Ambiguous mode '%s' ('mode ?' for help).\r\n", argv[1]);
    } else if (mt->needconnect && !connected) {
 printf("?Need to be connected first.\r\n");
 printf("'mode ?' for help.\r\n");
    } else if (mt->handler) {
 return (*mt->handler)(mt->arg1);
    }
    return 0;
}
