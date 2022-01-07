
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reply (int,char*,char*) ;

__attribute__((used)) static void
ack(char *s)
{

 reply(250, "%s command successful.", s);
}
