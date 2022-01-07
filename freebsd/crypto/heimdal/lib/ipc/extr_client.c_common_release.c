
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_ctx {scalar_t__ fd; struct path_ctx* path; } ;


 int close (scalar_t__) ;
 int free (struct path_ctx*) ;

int
common_release(void *ctx)
{
    struct path_ctx *s = ctx;
    if (s->fd >= 0)
 close(s->fd);
    free(s->path);
    free(s);
    return 0;
}
