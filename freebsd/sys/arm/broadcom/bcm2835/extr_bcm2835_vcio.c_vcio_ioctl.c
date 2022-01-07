
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int size ;
typedef int ptr ;
typedef int caddr_t ;


 int EINVAL ;

 int M_VCIO ;
 int M_WAITOK ;
 int bcm2835_mbox_property (int*,int) ;
 int copyin (void*,int*,int) ;
 int copyout (int*,void*,int) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int ) ;
 int memcpy (void**,int ,int) ;

int
vcio_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
    int error;
    void *ptr;
    uint32_t size;
    uint8_t *property;

    error = 0;
    switch(cmd) {
    case 128:
     memcpy (&ptr, arg, sizeof(ptr));
 error = copyin(ptr, &size, sizeof(size));

 if (error != 0)
  break;
 property = malloc(size, M_VCIO, M_WAITOK);

 error = copyin(ptr, property, size);
 if (error) {
  free(property, M_VCIO);
  break;
 }

 error = bcm2835_mbox_property(property, size);
 if (error) {
  free(property, M_VCIO);
  break;
 }

 error = copyout(property, ptr, size);
 free(property, M_VCIO);

 break;
    default:
 error = EINVAL;
 break;
    }
    return (error);
}
