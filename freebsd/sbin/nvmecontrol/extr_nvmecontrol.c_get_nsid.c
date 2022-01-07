
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_get_nsid {int nsid; int cdev; } ;


 int NVME_GET_NSID ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct nvme_get_nsid*) ;
 char* strndup (int ,int) ;

void
get_nsid(int fd, char **ctrlr_str, uint32_t *nsid)
{
 struct nvme_get_nsid gnsid;

 if (ioctl(fd, NVME_GET_NSID, &gnsid) < 0)
  err(1, "NVME_GET_NSID ioctl failed");
 if (ctrlr_str != ((void*)0))
  *ctrlr_str = strndup(gnsid.cdev, sizeof(gnsid.cdev));
 if (nsid != ((void*)0))
  *nsid = gnsid.nsid;
}
