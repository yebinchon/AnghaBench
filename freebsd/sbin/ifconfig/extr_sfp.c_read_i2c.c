
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ifi2creq {int dev_addr; int offset; int len; int data; } ;
struct i2c_info {scalar_t__ error; TYPE_1__* ifr; int fd; } ;
typedef int req ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;


 int MIN (int,int) ;
 int SIOCGI2C ;
 int errno ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int memcpy (int*,int ,int) ;
 int memset (struct ifi2creq*,int ,int) ;

__attribute__((used)) static int
read_i2c(struct i2c_info *ii, uint8_t addr, uint8_t off, uint8_t len,
    uint8_t *buf)
{
 struct ifi2creq req;
 int i, l;

 if (ii->error != 0)
  return (ii->error);

 ii->ifr->ifr_data = (caddr_t)&req;

 i = 0;
 l = 0;
 memset(&req, 0, sizeof(req));
 req.dev_addr = addr;
 req.offset = off;
 req.len = len;

 while (len > 0) {
  l = MIN(sizeof(req.data), len);
  req.len = l;
  if (ioctl(ii->fd, SIOCGI2C, ii->ifr) != 0) {
   ii->error = errno;
   return (errno);
  }

  memcpy(&buf[i], req.data, l);
  len -= l;
  i += l;
  req.offset += l;
 }

 return (0);
}
