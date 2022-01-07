
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int buf ;
 scalar_t__* poll_byte ;
 scalar_t__ verify ;
 int verify_buf (int ,int) ;

__attribute__((used)) static int recv_xfer(int size, uint8_t marker)
{
 int ret;

 while (*poll_byte != marker)
  ;

 if (verify) {
  ret = verify_buf(buf, size - 1);
  if (ret)
   return ret;
 }

 return 0;
}
