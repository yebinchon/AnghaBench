
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct dsk {int drive; } ;
struct zfsdsk {struct dsk dsk; } ;
struct TYPE_2__ {int addr; int eax; int edx; int ecx; int ebx; int efl; void* ctl; } ;


 int EDD_INTERFACE_FIXED_DISK ;
 scalar_t__ V86_CY (int ) ;
 void* V86_FLAGS ;
 int drvsize (struct dsk*) ;
 int drvsize_gpt (struct dsk*) ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static uint64_t
drvsize_ext(struct zfsdsk *zdsk)
{
 struct dsk *dskp;
 uint64_t size, tmp;
 int cyl, hds, sec;

 dskp = &zdsk->dsk;


 size = drvsize_gpt(dskp);
 if (size != 0)
  return (size);

 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x800;
 v86.edx = dskp->drive;
 v86int();


 if (V86_CY(v86.efl) ||
     (v86.edx & 0xff) <= (unsigned)(dskp->drive & 0x7f))
  return (0);
 cyl = ((v86.ecx & 0xc0) << 2) + ((v86.ecx & 0xff00) >> 8) + 1;

 hds = ((v86.edx & 0xff00) >> 8) + 1;
 sec = v86.ecx & 0x3f;

 size = (uint64_t)cyl * hds * sec;


 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x4100;
 v86.edx = dskp->drive;
 v86.ebx = 0x55aa;
 v86int();
 if (V86_CY(v86.efl) ||
     (v86.ebx & 0xffff) != 0xaa55 ||
     (v86.ecx & EDD_INTERFACE_FIXED_DISK) == 0)
  return (size);

 tmp = drvsize(dskp);
 if (tmp > size)
  size = tmp;

 return (size);
}
