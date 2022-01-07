
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fname; void* mode; int fp; } ;


 int FATAL (char*,int ) ;
 int FOPEN_MAX ;
 void* GT ;
 void* LT ;
 TYPE_1__* calloc (int ,int) ;
 TYPE_1__* files ;
 int nfiles ;
 int stderr ;
 int stdin ;
 int stdout ;

void stdinit(void)
{
 nfiles = FOPEN_MAX;
 files = calloc(nfiles, sizeof(*files));
 if (files == ((void*)0))
  FATAL("can't allocate file memory for %u files", nfiles);
        files[0].fp = stdin;
 files[0].fname = "/dev/stdin";
 files[0].mode = LT;
        files[1].fp = stdout;
 files[1].fname = "/dev/stdout";
 files[1].mode = GT;
        files[2].fp = stderr;
 files[2].fname = "/dev/stderr";
 files[2].mode = GT;
}
