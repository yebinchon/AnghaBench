
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_bde_key {int* lsector; scalar_t__ sectorsize; } ;
typedef int off_t ;


 int SEEK_SET ;
 int err (int,char*) ;
 int free (int *) ;
 int lseek (int,int,int ) ;
 int * malloc (scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 int printf (char*,int) ;
 int write (int,int *,scalar_t__) ;

__attribute__((used)) static void
cmd_nuke(struct g_bde_key *gl, int dfd , int key)
{
 int i;
 u_char *sbuf;
 off_t offset, offset2;

 sbuf = malloc(gl->sectorsize);
 memset(sbuf, 0, gl->sectorsize);
 offset = (gl->lsector[key] & ~(gl->sectorsize - 1));
 offset2 = lseek(dfd, offset, SEEK_SET);
 if (offset2 != offset)
  err(1, "lseek");
 i = write(dfd, sbuf, gl->sectorsize);
 free(sbuf);
 if (i != (int)gl->sectorsize)
  err(1, "write");
 printf("Nuked key %d\n", 1 + key);
}
