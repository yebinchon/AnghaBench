
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int line ;
struct TYPE_2__ {char* dv_name; } ;


 TYPE_1__ host_dev ;
 int pager_output (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
host_dev_print(int verbose)
{
 char line[80];

 printf("%s devices:", host_dev.dv_name);
 if (pager_output("\n") != 0)
  return (1);

 snprintf(line, sizeof(line), "    host%d:   Host filesystem\n", 0);
 return (pager_output(line));
}
