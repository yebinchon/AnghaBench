
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_raoffset; scalar_t__ f_ralen; int f_rabuf; } ;


 int SOPEN_RASIZE ;
 int malloc (int ) ;

__attribute__((used)) static void
o_rainit(struct open_file *f)
{
 f->f_rabuf = malloc(SOPEN_RASIZE);
 f->f_ralen = 0;
 f->f_raoffset = 0;
}
