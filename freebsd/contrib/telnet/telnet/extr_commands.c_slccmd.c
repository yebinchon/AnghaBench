
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slclist {int arg; int (* handler ) (int ) ;} ;


 scalar_t__ Ambiguous (void*) ;
 int fprintf (int ,char*,...) ;
 struct slclist* getslc (char*) ;
 int slcstate () ;
 int stderr ;
 int stub1 (int ) ;

__attribute__((used)) static int
slccmd(int argc, char *argv[])
{
    struct slclist *c;

    if (argc != 2) {
 fprintf(stderr,
     "Need an argument to 'slc' command.  'slc ?' for help.\n");
 return 0;
    }
    c = getslc(argv[1]);
    if (c == 0) {
 fprintf(stderr, "'%s': unknown argument ('slc ?' for help).\n",
        argv[1]);
 return 0;
    }
    if (Ambiguous((void *)c)) {
 fprintf(stderr, "'%s': ambiguous argument ('slc ?' for help).\n",
        argv[1]);
 return 0;
    }
    (*c->handler)(c->arg);
    slcstate();
    return 1;
}
