
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {char* filename; int line; int errors; } ;


 TYPE_1__* cfg_parser ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void ub_c_error_va_list(const char *fmt, va_list args)
{
 cfg_parser->errors++;
 fprintf(stderr, "%s:%d: error: ", cfg_parser->filename,
 cfg_parser->line);
 vfprintf(stderr, fmt, args);
 fprintf(stderr, "\n");
}
