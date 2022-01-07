
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cam_status ;
 int CAM_STATUS_MASK ;

 int EADDRINUSE ;
 int EAGAIN ;
 int EBUSY ;
 int ECANCELED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTSUP ;
 int ENOTTY ;
 int ENXIO ;
 int ETIMEDOUT ;

__attribute__((used)) static int
targcamstatus(cam_status status)
{
 switch (status & CAM_STATUS_MASK) {
 case 133:
  return (0);
 case 131:
  return (EINPROGRESS);
 case 132:
  return (EIO);
 case 136:
  return (ENOTTY);
 case 139:
  return (ENOTSUP);
 case 138:
  return (EADDRINUSE);
 case 137:
 case 140:
  return (ENOENT);
 case 134:
  return (ECANCELED);
 case 141:
  return (ETIMEDOUT);
 case 135:
  return (EAGAIN);
 case 130:
  return (EINVAL);
 case 129:
  return (ENOMEM);
 case 142:
 case 128:
  return (EBUSY);
 default:
  return (ENXIO);
 }
}
