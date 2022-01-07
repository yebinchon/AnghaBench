
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_volume (int,char* const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
gvinum_raid5(int argc, char * const *argv)
{

 if (argc < 2) {
  warnx("usage:\traid5 [-fv] [-s stripesize] [-n name] drives\n");
  return;
 }
 create_volume(argc, argv, "raid5");
}
