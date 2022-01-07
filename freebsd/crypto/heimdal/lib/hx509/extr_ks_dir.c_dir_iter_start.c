
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dircursor {int * iter; int * certs; int * dir; } ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOMEM ;
 struct dircursor* calloc (int,int) ;
 int errno ;
 int free (struct dircursor*) ;
 int hx509_clear_error_string (int ) ;
 int * opendir (void*) ;
 int rk_cloexec_dir (int *) ;

__attribute__((used)) static int
dir_iter_start(hx509_context context,
        hx509_certs certs, void *data, void **cursor)
{
    struct dircursor *d;

    *cursor = ((void*)0);

    d = calloc(1, sizeof(*d));
    if (d == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    d->dir = opendir(data);
    if (d->dir == ((void*)0)) {
 hx509_clear_error_string(context);
 free(d);
 return errno;
    }
    rk_cloexec_dir(d->dir);
    d->certs = ((void*)0);
    d->iter = ((void*)0);

    *cursor = d;
    return 0;
}
