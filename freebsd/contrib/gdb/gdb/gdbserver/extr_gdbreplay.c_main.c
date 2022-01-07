
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int EOL ;
 int exit (int) ;
 int expect (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int logchar (int *) ;
 int perror_with_name (char*) ;
 int play (int *) ;
 int remote_close () ;
 int remote_open (char*) ;
 int stderr ;

int
main (int argc, char *argv[])
{
  FILE *fp;
  int ch;

  if (argc < 3)
    {
      fprintf (stderr, "Usage: gdbreplay <logfile> <host:port>\n");
      fflush (stderr);
      exit (1);
    }
  fp = fopen (argv[1], "r");
  if (fp == ((void*)0))
    {
      perror_with_name (argv[1]);
    }
  remote_open (argv[2]);
  while ((ch = logchar (fp)) != EOF)
    {
      switch (ch)
 {
 case 'w':

   expect (fp);
   break;
 case 'r':

   play (fp);
   break;
 case 'c':

   while ((ch = logchar (fp)) != EOL);
   break;
 }
    }
  remote_close ();
  exit (0);
}
