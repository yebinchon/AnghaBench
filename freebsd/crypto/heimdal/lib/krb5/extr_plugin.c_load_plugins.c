
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path; } ;
struct TYPE_4__ {TYPE_1__ dso; } ;
struct plugin {scalar_t__ type; TYPE_2__ u; struct plugin* next; } ;
struct dirent {char* d_name; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int DIR ;


 scalar_t__ DSO ;
 int ENOMEM ;
 scalar_t__ _krb5_expand_path_tokens (int ,char*,char**) ;
 int asprintf (char**,char*,char*,char*,...) ;
 int closedir (int *) ;
 int free (char*) ;
 int is_valid_plugin_filename (char*) ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 int krb5_set_error_message (int ,int ,char*) ;
 int loadlib (int ,char*) ;
 int * opendir (char*) ;
 scalar_t__ plugins_needs_scan ;
 struct dirent* readdir (int *) ;
 struct plugin* registered ;
 char** rk_UNCONST (int ) ;
 int rk_cloexec_dir (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int sysplugin_dirs ;
 int trim_trailing_slash (char*) ;

__attribute__((used)) static krb5_error_code
load_plugins(krb5_context context)
{
    struct plugin *e;
    krb5_error_code ret;
    char **dirs = ((void*)0), **di;
    struct dirent *entry;
    char *path;
    DIR *d = ((void*)0);

    if (!plugins_needs_scan)
 return 0;
    plugins_needs_scan = 0;
    return 0;
}
