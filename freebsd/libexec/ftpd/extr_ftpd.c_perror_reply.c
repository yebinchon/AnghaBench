
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int reply (int,char*,char*,int ) ;
 int strerror (int ) ;

void
perror_reply(int code, char *string)
{

 reply(code, "%s: %s.", string, strerror(errno));
}
