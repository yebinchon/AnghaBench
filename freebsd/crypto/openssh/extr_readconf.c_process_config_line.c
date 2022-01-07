
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int Options ;


 int process_config_line_depth (int *,struct passwd*,char const*,char const*,char*,char const*,int,int*,int,int ) ;

int
process_config_line(Options *options, struct passwd *pw, const char *host,
    const char *original_host, char *line, const char *filename,
    int linenum, int *activep, int flags)
{
 return process_config_line_depth(options, pw, host, original_host,
     line, filename, linenum, activep, flags, 0);
}
