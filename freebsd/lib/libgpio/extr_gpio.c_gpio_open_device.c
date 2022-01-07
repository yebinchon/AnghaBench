
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_handle_t ;


 int GPIOMAXPIN ;
 int GPIO_INVALID_HANDLE ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (char const*,int ) ;

gpio_handle_t
gpio_open_device(const char *device)
{
 int fd, maxpins;
 int serr;

 fd = open(device, O_RDONLY);
 if (fd < 0)
  return (GPIO_INVALID_HANDLE);



 if (ioctl(fd, GPIOMAXPIN, &maxpins) < 0) {
  serr = errno;
  close(fd);
  errno = serr;
  return (GPIO_INVALID_HANDLE);
 }

 return (fd);
}
