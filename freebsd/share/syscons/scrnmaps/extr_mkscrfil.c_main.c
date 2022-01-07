
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scrmap_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fwrite (int *,int,int,int *) ;
 int perror (char*) ;
 int scrmap ;
 int stderr ;

int main(int argc, char **argv)
{
 FILE *fd;

 if (argc == 2) {
  if ((fd = fopen(argv[1], "w")) == ((void*)0)) {
   perror(argv[1]);
   return 1;
  }
  fwrite(&scrmap, sizeof(scrmap_t), 1, fd);
  fclose(fd);
  return 0;
 }
 else {
  fprintf(stderr, "usage: %s <mapfile>\n", argv[0]);
  return 1;
 }
}
