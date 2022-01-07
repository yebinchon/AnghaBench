
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; scalar_t__ revents; int fd; } ;
struct libusb20_device {int file; int is_opened; } ;


 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 scalar_t__ poll (struct pollfd*,int,int) ;

void
libusb20_dev_wait_process(struct libusb20_device *pdev, int timeout)
{
 struct pollfd pfd[1];

 if (!pdev->is_opened) {
  return;
 }
 pfd[0].fd = pdev->file;
 pfd[0].events = (POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);
 pfd[0].revents = 0;

 if (poll(pfd, 1, timeout)) {

 }
 return;
}
