
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dologout (int ) ;
 int reply (int,char*,...) ;

void
fatalerror(char *s)
{

 reply(451, "Error in server: %s", s);
 reply(221, "Closing connection due to server error.");
 dologout(0);

}
