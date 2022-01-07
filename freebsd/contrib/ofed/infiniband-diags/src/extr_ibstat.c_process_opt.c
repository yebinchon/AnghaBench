
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int list_only ;
 int list_ports ;
 int short_format ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'l':
  list_only++;
  break;
 case 's':
  short_format++;
  break;
 case 'p':
  list_ports++;
  break;
 default:
  return -1;
 }
 return 0;
}
