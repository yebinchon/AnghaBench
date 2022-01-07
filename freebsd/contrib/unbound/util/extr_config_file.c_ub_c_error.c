
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; int line; int errors; } ;


 TYPE_1__* cfg_parser ;
 int fprintf (int ,char*,char*,int,char const*) ;
 int stderr ;

void ub_c_error(const char *str)
{
 cfg_parser->errors++;
 fprintf(stderr, "%s:%d: error: %s\n", cfg_parser->filename,
  cfg_parser->line, str);
}
