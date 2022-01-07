
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {char const* filename; char const* mode; int keep_open; int * fd; } ;
typedef int krb5_log_facility ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int FILE ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int close_file ;
 int krb5_addlog_func (int ,int *,int,int,int ,int ,struct file_data*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int log_file ;
 struct file_data* malloc (int) ;

__attribute__((used)) static krb5_error_code
open_file(krb5_context context, krb5_log_facility *fac, int min, int max,
   const char *filename, const char *mode, FILE *f, int keep_open)
{
    struct file_data *fd = malloc(sizeof(*fd));
    if(fd == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    fd->filename = filename;
    fd->mode = mode;
    fd->fd = f;
    fd->keep_open = keep_open;

    return krb5_addlog_func(context, fac, min, max, log_file, close_file, fd);
}
