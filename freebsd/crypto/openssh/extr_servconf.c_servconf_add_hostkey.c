
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_host_key_files; int host_key_files; } ;
typedef TYPE_1__ ServerOptions ;


 int R_OK ;
 scalar_t__ access (char const*,int ) ;
 int array_append (char const*,int const,char*,int *,int *,char*) ;
 char const* defaultkey ;
 char* derelativise_path (char const*) ;
 int free (char*) ;

void
servconf_add_hostkey(const char *file, const int line,
    ServerOptions *options, const char *path)
{
 char *apath = derelativise_path(path);

 if (file == defaultkey && access(path, R_OK) != 0)
  return;
 array_append(file, line, "HostKey",
     &options->host_key_files, &options->num_host_key_files, apath);
 free(apath);
}
