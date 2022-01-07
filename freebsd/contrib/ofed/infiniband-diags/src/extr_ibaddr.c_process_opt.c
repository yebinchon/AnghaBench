
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_gid ;
 int show_lid ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'g':
  show_gid = 1;
  break;
 case 'l':
  show_lid++;
  break;
 case 'L':
  show_lid = -100;
  break;
 default:
  return -1;
 }
 return 0;
}
