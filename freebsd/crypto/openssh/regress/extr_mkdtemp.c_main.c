
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;


 int PATH_MAX ;
 int exit (int) ;
 int fatal (char*) ;
 char* getenv (char*) ;
 char* mkdtemp (char*) ;
 int perror (char*) ;
 int puts (char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 const char *base;
 const char *tmpdir;
 char template[PATH_MAX];
 int r;
 char *dir;

 if (argc != 2)
  usage();
 base = argv[1];

 if ((tmpdir = getenv("TMPDIR")) == ((void*)0))
  tmpdir = "/tmp";
 r = snprintf(template, sizeof(template), "%s/%s", tmpdir, base);
 if (r < 0 || (size_t)r >= sizeof(template))
  fatal("template string too long");
 dir = mkdtemp(template);
 if (dir == ((void*)0)) {
  perror("mkdtemp");
  exit(1);
 }
 puts(dir);
 return 0;
}
