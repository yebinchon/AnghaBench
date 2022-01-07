
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int atoi (char*) ;
 int help () ;
 int show_interfaces (int ) ;
 int show_number_of_entries () ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{
 if (argc < 2)
  help();

 if (strcmp(argv[1], "total") == 0) {
  show_number_of_entries();
 } else if (strcmp(argv[1], "list") == 0) {
  if (argc == 2)
   show_interfaces(0);
  else if (argc == 3)
   show_interfaces(atoi(argv[2]));
  else
   help();
 } else
  help();

 return EXIT_SUCCESS;
}
