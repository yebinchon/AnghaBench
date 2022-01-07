
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getmessage (unsigned char*,int ) ;
 int putmessage (unsigned char*,int) ;

__attribute__((used)) static int
sds_send (unsigned char *buf, int len)
{
  putmessage (buf, len);

  return getmessage (buf, 0);
}
