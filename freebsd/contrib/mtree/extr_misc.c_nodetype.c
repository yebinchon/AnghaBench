
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 char const* inotype (int ) ;
 int nodetoino (int ) ;

const char *
nodetype(u_int type)
{

 return (inotype(nodetoino(type)));
}
