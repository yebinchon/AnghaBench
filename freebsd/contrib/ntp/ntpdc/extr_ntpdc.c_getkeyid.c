
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int FILE ;


 int COUNTOF (char*) ;
 int EOF ;
 int _O_TEXT ;
 int * _fdopen (int ,char*) ;
 int atoi (char*) ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int getc (int *) ;
 int open (char*,int) ;
 int setbuf (int *,char*) ;
 int stderr ;
 int * stdin ;

__attribute__((used)) static u_long
getkeyid(
 const char *keyprompt
 )
{
 int c;
 FILE *fi;
 char pbuf[20];
 size_t i;
 size_t ilim;


 if ((fi = fdopen(open("/dev/tty", 2), "r")) == ((void*)0))



  fi = stdin;
 else
  setbuf(fi, (char *)((void*)0));
 fprintf(stderr, "%s", keyprompt); fflush(stderr);
 for (i = 0, ilim = COUNTOF(pbuf) - 1;
      i < ilim && (c = getc(fi)) != '\n' && c != EOF;
      )
  pbuf[i++] = (char)c;
 pbuf[i] = '\0';
 if (fi != stdin)
  fclose(fi);

 return (u_long) atoi(pbuf);
}
