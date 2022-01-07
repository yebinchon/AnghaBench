
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ino_t ;
struct TYPE_2__ {int c_type; int c_count; } ;


 int TP_BSIZE ;
 int howmany (int,int ) ;
 int mapsize ;
 TYPE_1__ spcl ;
 int writeheader (int ) ;
 int writerec (char*,int ) ;

void
dumpmap(char *map, int type, ino_t ino)
{
 int i;
 char *cp;

 spcl.c_type = type;
 spcl.c_count = howmany(mapsize * sizeof(char), TP_BSIZE);
 writeheader(ino);
 for (i = 0, cp = map; i < spcl.c_count; i++, cp += TP_BSIZE)
  writerec(cp, 0);
}
