
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_host_cert_files; int host_cert_files; } ;
typedef TYPE_1__ ServerOptions ;


 int array_append (char const*,int const,char*,int *,int *,char*) ;
 char* derelativise_path (char const*) ;
 int free (char*) ;

void
servconf_add_hostcert(const char *file, const int line,
    ServerOptions *options, const char *path)
{
 char *apath = derelativise_path(path);

 array_append(file, line, "HostCertificate",
     &options->host_cert_files, &options->num_host_cert_files, apath);
 free(apath);
}
