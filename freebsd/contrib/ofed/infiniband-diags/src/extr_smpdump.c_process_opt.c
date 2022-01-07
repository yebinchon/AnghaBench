
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int dump_char ;
 int mgmt_class ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 's':
  dump_char++;
  break;
 case 'D':
  mgmt_class = IB_SMI_DIRECT_CLASS;
  break;
 case 'L':
  mgmt_class = IB_SMI_CLASS;
  break;
 default:
  return -1;
 }
 return 0;
}
