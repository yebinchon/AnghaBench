
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int be32toh (int ) ;
 int fprintf (int *,char*,int,int,int,int) ;

__attribute__((used)) static void dump_cqe(FILE *fp, void *buf)
{
 uint32_t *p = buf;
 int i;

 for (i = 0; i < 16; i += 4)
  fprintf(fp, "%08x %08x %08x %08x\n", be32toh(p[i]), be32toh(p[i + 1]),
   be32toh(p[i + 2]), be32toh(p[i + 3]));
}
