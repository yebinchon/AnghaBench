
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buflen; char* buf; } ;
typedef TYPE_1__ conn_t ;


 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static void
http_conn_trimright(conn_t *conn)
{
 while (conn->buflen &&
        isspace((unsigned char)conn->buf[conn->buflen - 1]))
  conn->buflen--;
 conn->buf[conn->buflen] = '\0';
}
