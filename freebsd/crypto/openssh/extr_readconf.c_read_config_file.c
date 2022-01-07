
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int Options ;


 int read_config_file_depth (char const*,struct passwd*,char const*,char const*,int *,int,int*,int ) ;

int
read_config_file(const char *filename, struct passwd *pw, const char *host,
    const char *original_host, Options *options, int flags)
{
 int active = 1;

 return read_config_file_depth(filename, pw, host, original_host,
     options, flags, &active, 0);
}
