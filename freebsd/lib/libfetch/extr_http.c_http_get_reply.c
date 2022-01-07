
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; char err; } ;
typedef TYPE_1__ conn_t ;


 int HTTP_PROTOCOL_ERROR ;
 int fetch_getln (TYPE_1__*) ;
 int isdigit (unsigned char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
http_get_reply(conn_t *conn)
{
 char *p;

 if (fetch_getln(conn) == -1)
  return (-1);
 if (strncmp(conn->buf, "HTTP", 4) != 0)
  return (HTTP_PROTOCOL_ERROR);
 p = conn->buf + 4;
 if (*p == '/') {
  if (p[1] != '1' || p[2] != '.' || (p[3] != '0' && p[3] != '1'))
   return (HTTP_PROTOCOL_ERROR);
  p += 4;
 }
 if (*p != ' ' ||
     !isdigit((unsigned char)p[1]) ||
     !isdigit((unsigned char)p[2]) ||
     !isdigit((unsigned char)p[3]))
  return (HTTP_PROTOCOL_ERROR);

 conn->err = (p[1] - '0') * 100 + (p[2] - '0') * 10 + (p[3] - '0');
 return (conn->err);
}
