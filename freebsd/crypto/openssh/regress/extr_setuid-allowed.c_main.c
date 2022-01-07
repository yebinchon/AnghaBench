
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_flag; } ;


 scalar_t__ ENOSYS ;
 int ST_NOSUID ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ statvfs (char const*,struct statvfs*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int usage () ;

int
main(int argc, char **argv)
{
 const char *path = ".";
 struct statvfs sb;

 if (argc > 2)
  usage();
 else if (argc == 2)
  path = argv[1];

 if (statvfs(path, &sb) != 0) {

  if (errno == ENOSYS)
   return 0;
  fprintf(stderr, "statvfs for \"%s\" failed: %s\n",
       path, strerror(errno));
 }
 return (sb.f_flag & ST_NOSUID) ? 1 : 0;
}
