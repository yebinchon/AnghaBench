
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct path_ctx {int fd; } ;
typedef int ssize_t ;
typedef int rv ;
typedef int len ;
struct TYPE_4__ {int length; int * data; } ;
typedef TYPE_1__ heim_idata ;
typedef int * heim_icred ;


 int htonl (int) ;
 int * malloc (int) ;
 int net_read (int ,int *,int) ;
 int net_write (int ,int *,int) ;
 void* ntohl (int ) ;

__attribute__((used)) static int
unix_socket_ipc(void *ctx,
  const heim_idata *req, heim_idata *rep,
  heim_icred *cred)
{
    struct path_ctx *s = ctx;
    uint32_t len = htonl(req->length);
    uint32_t rv;
    int retval;

    if (cred)
 *cred = ((void*)0);

    rep->data = ((void*)0);
    rep->length = 0;

    if (net_write(s->fd, &len, sizeof(len)) != sizeof(len))
 return -1;
    if (net_write(s->fd, req->data, req->length) != (ssize_t)req->length)
 return -1;

    if (net_read(s->fd, &len, sizeof(len)) != sizeof(len))
 return -1;
    if (net_read(s->fd, &rv, sizeof(rv)) != sizeof(rv))
 return -1;
    retval = ntohl(rv);

    rep->length = ntohl(len);
    if (rep->length > 0) {
 rep->data = malloc(rep->length);
 if (rep->data == ((void*)0))
     return -1;
 if (net_read(s->fd, rep->data, rep->length) != (ssize_t)rep->length)
     return -1;
    } else
 rep->data = ((void*)0);

    return retval;
}
