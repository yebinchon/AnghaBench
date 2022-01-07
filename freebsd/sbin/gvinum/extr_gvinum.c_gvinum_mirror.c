
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_volume (int,char* const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
gvinum_mirror(int argc, char * const *argv)
{

 if (argc < 2) {
  warnx("usage\tmirror [-fsv] [-n name] drives\n");
  return;
 }
 create_volume(argc, argv, "mirror");
}
