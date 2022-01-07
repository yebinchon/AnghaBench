
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref; struct TYPE_4__* buf; int sd; int * ssl_cert; int * ssl_ctx; int * ssl; } ;
typedef TYPE_1__ conn_t ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int SSL_set_connect_state (int *) ;
 int SSL_shutdown (int *) ;
 int X509_free (int *) ;
 int close (int ) ;
 int free (TYPE_1__*) ;

int
fetch_close(conn_t *conn)
{
 int ret;

 if (--conn->ref > 0)
  return (0);
 ret = close(conn->sd);
 free(conn->buf);
 free(conn);
 return (ret);
}
