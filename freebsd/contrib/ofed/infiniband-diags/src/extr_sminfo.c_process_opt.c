
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* act ;
 void* prio ;
 void* state ;
 void* strtoul (char*,int ,int ) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'a':
  act = strtoul(optarg, 0, 0);
  break;
 case 's':
  state = strtoul(optarg, 0, 0);
  break;
 case 'p':
  prio = strtoul(optarg, 0, 0);
  break;
 default:
  return -1;
 }
 return 0;
}
