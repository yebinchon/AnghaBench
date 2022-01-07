
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* manpath; char* arch; char const* sec; } ;
struct req {TYPE_1__ q; int * p; } ;


 int http_encode (char const*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 char* scriptname ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
pg_redirect(const struct req *req, const char *name)
{
 printf("Status: 303 See Other\r\n"
     "Location: /");
 if (*scriptname != '\0')
  printf("%s/", scriptname);
 if (strcmp(req->q.manpath, req->p[0]))
  printf("%s/", req->q.manpath);
 if (req->q.arch != ((void*)0))
  printf("%s/", req->q.arch);
 http_encode(name);
 if (req->q.sec != ((void*)0)) {
  putchar('.');
  http_encode(req->q.sec);
 }
 printf("\r\nContent-Type: text/html; charset=utf-8\r\n\r\n");
}
