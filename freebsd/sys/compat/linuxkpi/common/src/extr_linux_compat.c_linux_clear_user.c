
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ subyte (int *,int ) ;
 scalar_t__ suword32 (int *,int ) ;
 scalar_t__ suword64 (int *,int ) ;

size_t
linux_clear_user(void *_uaddr, size_t _len)
{
 uint8_t *uaddr = _uaddr;
 size_t len = _len;


 while (((uintptr_t)uaddr & 7) != 0 && len > 7) {
  if (subyte(uaddr, 0))
   return (_len);
  uaddr++;
  len--;
 }


 while (len > 7) {

  if (suword64(uaddr, 0))
   return (_len);






  uaddr += 8;
  len -= 8;
 }


 while (len > 0) {
  if (subyte(uaddr, 0))
   return (_len);
  uaddr++;
  len--;
 }
 return (0);
}
