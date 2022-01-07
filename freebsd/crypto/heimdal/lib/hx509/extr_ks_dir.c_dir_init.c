
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOENT ;
 int ENOMEM ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*,char const*) ;
 int stat (char const*,struct stat*) ;
 void* strdup (char const*) ;

__attribute__((used)) static int
dir_init(hx509_context context,
  hx509_certs certs, void **data, int flags,
  const char *residue, hx509_lock lock)
{
    *data = ((void*)0);

    {
 struct stat sb;
 int ret;

 ret = stat(residue, &sb);
 if (ret == -1) {
     hx509_set_error_string(context, 0, ENOENT,
       "No such file %s", residue);
     return ENOENT;
 }

 if (!S_ISDIR(sb.st_mode)) {
     hx509_set_error_string(context, 0, ENOTDIR,
       "%s is not a directory", residue);
     return ENOTDIR;
 }
    }

    *data = strdup(residue);
    if (*data == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    return 0;
}
