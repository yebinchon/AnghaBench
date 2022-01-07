
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;


 int ERANGE ;
 int NGM_BINARY2ASCII ;
 int NGM_GENERIC_COOKIE ;
 scalar_t__ NgRecvMsg (int,struct ng_mesg*,int,char*) ;
 scalar_t__ NgSendMsg (int,char*,int ,int ,struct ng_mesg*,int) ;
 int errno ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (struct ng_mesg*,struct ng_mesg*,int) ;
 int strncpy (scalar_t__,scalar_t__,int) ;

int
NgRecvAsciiMsg(int cs, struct ng_mesg *reply, size_t replen, char *path)
{
 struct ng_mesg *msg, *ascii;
 int bufSize, errnosv;
 u_char *buf;


 bufSize = 2 * sizeof(*reply) + replen;
 if ((buf = malloc(bufSize)) == ((void*)0))
  return (-1);
 msg = (struct ng_mesg *)buf;
 ascii = (struct ng_mesg *)msg->data;


 if (NgRecvMsg(cs, msg, bufSize, path) < 0)
  goto fail;
 memcpy(reply, msg, sizeof(*msg));


 if (NgSendMsg(cs, path, NGM_GENERIC_COOKIE,
     NGM_BINARY2ASCII, msg, sizeof(*msg) + msg->header.arglen) < 0)
  goto fail;
 if (NgRecvMsg(cs, msg, bufSize, ((void*)0)) < 0)
  goto fail;


 if (sizeof(*ascii) + ascii->header.arglen > replen) {
  errno = ERANGE;
fail:
  errnosv = errno;
  free(buf);
  errno = errnosv;
  return (-1);
 }
 strncpy(reply->data, ascii->data, ascii->header.arglen);


 free(buf);
 return (0);
}
