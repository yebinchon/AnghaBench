
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int EXIT_FAILURE ;
 int display_errors ;
 int exit (int ) ;
 int getopt_long (int,char**,char const*,struct option const*,int *) ;
 int help () ;

 int version () ;

__attribute__((used)) static void
parse_options(int argc, char **argv)
{
 static const char short_opts[] = "cdkM:hqQV";
 static const struct option long_opts[] = {
  { "stdout", 128, ((void*)0), 'c' },
  { "to-stdout", 128, ((void*)0), 'c' },
  { "decompress", 128, ((void*)0), 'd' },
  { "uncompress", 128, ((void*)0), 'd' },
  { "keep", 128, ((void*)0), 'k' },
  { "quiet", 128, ((void*)0), 'q' },
  { "no-warn", 128, ((void*)0), 'Q' },
  { "help", 128, ((void*)0), 'h' },
  { "version", 128, ((void*)0), 'V' },
  { ((void*)0), 0, ((void*)0), 0 }
 };

 int c;

 while ((c = getopt_long(argc, argv, short_opts, long_opts, ((void*)0)))
   != -1) {
  switch (c) {
  case 'c':
  case 'd':
  case 'k':
  case 'Q':
   break;

  case 'q':
   if (display_errors > 0)
    --display_errors;

   break;

  case 'h':
   help();

  case 'V':
   version();

  default:
   exit(EXIT_FAILURE);
  }
 }

 return;
}
