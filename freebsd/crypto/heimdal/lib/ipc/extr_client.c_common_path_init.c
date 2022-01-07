
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_ctx {int fd; int path; } ;


 int ENOMEM ;
 int asprintf (int *,char*,char const*,char const*) ;
 struct path_ctx* malloc (int) ;

__attribute__((used)) static int
common_path_init(const char *service,
   const char *file,
   void **ctx)
{
    struct path_ctx *s;

    s = malloc(sizeof(*s));
    if (s == ((void*)0))
 return ENOMEM;
    s->fd = -1;

    asprintf(&s->path, "/var/run/.heim_%s-%s", service, file);

    *ctx = s;

    return 0;
}
