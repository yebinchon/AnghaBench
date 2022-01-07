
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ malloc (int ) ;
 int memcpy (struct sockaddr*,void const*,int ) ;

__attribute__((used)) static struct sockaddr *sockaddr_dup(const void *data, socklen_t len)
{
 struct sockaddr *ret = (struct sockaddr *)malloc(len);
 memcpy(ret, data, len);
 return ret;
}
