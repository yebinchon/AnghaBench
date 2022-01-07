
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCOSFPFLUSH ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ) ;

void
pfctl_clear_fingerprints(int dev, int opts)
{
 if (ioctl(dev, DIOCOSFPFLUSH))
  err(1, "DIOCOSFPFLUSH");
}
