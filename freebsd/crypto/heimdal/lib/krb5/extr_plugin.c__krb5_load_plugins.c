
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin2 {void* names; int path; scalar_t__ dsohandle; } ;
struct dirent {char* d_name; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef struct plugin2* heim_string_t ;
typedef struct plugin2* heim_dict_t ;
typedef int DIR ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 int asprintf (char**,char*,char const*,char*,...) ;
 int closedir (int *) ;
 scalar_t__ dlopen (char*,int) ;
 int free (char*) ;
 struct plugin2* heim_alloc (int,char*,int ) ;
 int heim_dict_add_value (struct plugin2*,struct plugin2*,struct plugin2*) ;
 struct plugin2* heim_dict_copy_value (struct plugin2*,struct plugin2*) ;
 void* heim_dict_create (int) ;
 int heim_release (struct plugin2*) ;
 int heim_retain (struct plugin2*) ;
 struct plugin2* heim_string_create (char const*) ;
 struct plugin2* modules ;
 int * opendir (char const*) ;
 int plug_dealloc ;
 int plugin_mutex ;
 struct dirent* readdir (int *) ;
 int rk_cloexec_dir (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

void
_krb5_load_plugins(krb5_context context, const char *name, const char **paths)
{
}
