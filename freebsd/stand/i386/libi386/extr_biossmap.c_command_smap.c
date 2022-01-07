
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ length; scalar_t__ base; } ;


 int CMD_ERROR ;
 int CMD_OK ;
 int printf (char*,unsigned int,unsigned long long,unsigned long long,...) ;
 scalar_t__* smapattr ;
 TYPE_1__* smapbase ;
 size_t smaplen ;

__attribute__((used)) static int
command_smap(int argc, char *argv[])
{
 u_int i;

 if (smapbase == ((void*)0) || smaplen == 0)
  return (CMD_ERROR);
 if (smapattr != ((void*)0))
  for (i = 0; i < smaplen; i++)
   printf("SMAP type=%02x base=%016llx len=%016llx attr=%02x\n",
       (unsigned int)smapbase[i].type,
       (unsigned long long)smapbase[i].base,
       (unsigned long long)smapbase[i].length,
       (unsigned int)smapattr[i]);
 else
  for (i = 0; i < smaplen; i++)
   printf("SMAP type=%02x base=%016llx len=%016llx\n",
       (unsigned int)smapbase[i].type,
       (unsigned long long)smapbase[i].base,
       (unsigned long long)smapbase[i].length);
 return (CMD_OK);
}
