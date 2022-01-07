
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINE_BREAK () ;
 int chaninfo ;
 int getchaninfo (int) ;
 int getregdomain (int) ;
 int print_channels (int,int ,int,int) ;
 int print_regdomain (int *,int) ;
 int regdomain ;
 char spacer ;
 int verbose ;

__attribute__((used)) static void
list_regdomain(int s, int channelsalso)
{
 getregdomain(s);
 if (channelsalso) {
  getchaninfo(s);
  spacer = ':';
  print_regdomain(&regdomain, 1);
  LINE_BREAK();
  print_channels(s, chaninfo, 1 , 1 );
 } else
  print_regdomain(&regdomain, verbose);
}
