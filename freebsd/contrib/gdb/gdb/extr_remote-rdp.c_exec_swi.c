
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int n; char* s; } ;
typedef TYPE_1__ argsin ;
struct TYPE_22__ {char (* system ) (TYPE_2__*,char*) ;char (* get_errno ) (TYPE_2__*) ;char (* time ) (TYPE_2__*,int *) ;int (* unlink ) (TYPE_2__*,char*) ;int (* rename ) (TYPE_2__*,char*,char*) ;int (* open ) (TYPE_2__*,char*,int) ;int (* close ) (TYPE_2__*,int) ;int (* write ) (TYPE_2__*,int,char*,int) ;int (* read ) (TYPE_2__*,int,char*,int) ;long (* lseek ) (TYPE_2__*,int,long,int ) ;int (* isatty ) (TYPE_2__*,int) ;int (* read_stdin ) (TYPE_2__*,char*,int) ;int (* write_stdout ) (TYPE_2__*,char*,int) ;} ;


 int CLOCKS_PER_SEC ;
 int O_RDONLY ;
 int SEEK_CUR ;
 int SEEK_END ;
 char* alloca (int) ;
 TYPE_2__* callback ;
 int clock () ;
 char* commandline ;
 int remote_rdp_xfer_inferior_memory (int,char*,int,int,int ,int ) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_2__*,char*,int) ;
 int stub10 (TYPE_2__*,int) ;
 int stub11 (TYPE_2__*,int,char*,int) ;
 int stub12 (TYPE_2__*,int,char*,int) ;
 long stub13 (TYPE_2__*,int,long,int ) ;
 long stub14 (TYPE_2__*,int,long,int ) ;
 long stub15 (TYPE_2__*,int,long,int ) ;
 long stub16 (TYPE_2__*,int,long,int ) ;
 int stub17 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,char*,int) ;
 int stub3 (TYPE_2__*,char*,int) ;
 char stub4 (TYPE_2__*,char*) ;
 char stub5 (TYPE_2__*) ;
 char stub6 (TYPE_2__*,int *) ;
 int stub7 (TYPE_2__*,char*) ;
 int stub8 (TYPE_2__*,char*,char*) ;
 int stub9 (TYPE_2__*,char*,int) ;
 int* translate_open_mode ;

__attribute__((used)) static int
exec_swi (int swi, argsin *args)
{
  int i;
  char c;
  switch (swi)
    {
    case 128:
      callback->write_stdout (callback, &c, 1);
      return 0;
    case 129:
      for (i = 0; i < args->n; i++)
 callback->write_stdout (callback, args->s, strlen (args->s));
      return 0;
    case 135:
      callback->read_stdin (callback, &c, 1);
      args->n = c;
      return 1;
    case 144:
      args->n = callback->system (callback, args->s);
      return 1;
    case 139:
      args->n = callback->get_errno (callback);
      return 1;
    case 131:
      args->n = callback->time (callback, ((void*)0));
      return 1;

    case 143:

      args->n =






 clock () / 10000;

      return 1;

    case 134:
      args->n = callback->unlink (callback, args->s);
      return 1;
    case 133:
      args->n = callback->rename (callback, args[0].s, args[1].s);
      return 1;

    case 137:

      i = translate_open_mode[args[1].n];


      if (strcmp (args->s, ":tt") == 0)
 {
   if (i == O_RDONLY)
     args->n = 0 ;
   else
     args->n = 1 ;
 }
      else
 args->n = callback->open (callback, args->s, i);
      return 1;

    case 142:
      args->n = callback->close (callback, args->n);
      return 1;

    case 130:

      args->n = args[1].n -
 callback->write (callback, args[0].n, args[1].s, args[1].n);
      return 1;

    case 136:
      {
 char *copy = alloca (args[2].n);
 int done = callback->read (callback, args[0].n, copy, args[2].n);
 if (done > 0)
   remote_rdp_xfer_inferior_memory (args[1].n, copy, done, 1, 0, 0);
 args->n = args[2].n - done;
 return 1;
      }

    case 132:

      args->n = callback->lseek (callback, args[0].n, args[1].n, 0) < 0;
      return 1;

    case 141:
      {
 long old = callback->lseek (callback, args->n, 0, SEEK_CUR);
 args->n = callback->lseek (callback, args->n, 0, SEEK_END);
 callback->lseek (callback, args->n, old, 0);
 return 1;
      }

    case 138:
      args->n = callback->isatty (callback, args->n);
      return 1;

    case 140:
      if (commandline != ((void*)0))
 {
   int len = strlen (commandline);
   if (len > 255)
     {
       len = 255;
       commandline[255] = '\0';
     }
   remote_rdp_xfer_inferior_memory (args[0].n,
        commandline, len + 1, 1, 0, 0);
 }
      else
 remote_rdp_xfer_inferior_memory (args[0].n, "", 1, 1, 0, 0);
      return 1;

    default:
      return 0;
    }
}
