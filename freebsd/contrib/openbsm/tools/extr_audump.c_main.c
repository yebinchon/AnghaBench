
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audump_class () ;
 int audump_class_r () ;
 int audump_control () ;
 int audump_event () ;
 int audump_event_r () ;
 int audump_user () ;
 int audump_user_r () ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{

 if (argc != 2)
  usage();

 if (strcmp(argv[1], "class") == 0)
  audump_class();
 else if (strcmp(argv[1], "class_r") == 0)
  audump_class_r();
 else if (strcmp(argv[1], "control") == 0)
  audump_control();
 else if (strcmp(argv[1], "event") == 0)
  audump_event();
 else if (strcmp(argv[1], "event_r") == 0)
  audump_event_r();
 else if (strcmp(argv[1], "user") == 0)
  audump_user();
 else if (strcmp(argv[1], "user_r") == 0)
  audump_user_r();
 else
  usage();

 return (0);
}
