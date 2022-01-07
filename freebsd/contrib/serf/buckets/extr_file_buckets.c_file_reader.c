
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef TYPE_1__ file_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int apr_file_read (int ,char*,int *) ;

__attribute__((used)) static apr_status_t file_reader(void *baton, apr_size_t bufsize,
                                char *buf, apr_size_t *len)
{
    file_context_t *ctx = baton;

    *len = bufsize;
    return apr_file_read(ctx->file, buf, len);
}
