
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reply (int,char*,char*) ;

void
nack(char *s)
{

 reply(502, "%s command not implemented.", s);
}
