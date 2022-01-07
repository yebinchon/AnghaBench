
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TP_BSIZE ;
 int done (int) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int * malloc (long) ;
 long ntrec ;
 int stderr ;
 int * tapebuf ;

void
newtapebuf(long size)
{
 static int tapebufsize = -1;

 ntrec = size;
 if (size <= tapebufsize)
  return;
 if (tapebuf != ((void*)0))
  free(tapebuf - TP_BSIZE);
 tapebuf = malloc((size+1) * TP_BSIZE);
 if (tapebuf == ((void*)0)) {
  fprintf(stderr, "Cannot allocate space for tape buffer\n");
  done(1);
 }
 tapebuf += TP_BSIZE;
 tapebufsize = size;
}
