
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmtreply (char*) ;

int
rmtwrite2(void)
{

 return (rmtreply("write"));
}
