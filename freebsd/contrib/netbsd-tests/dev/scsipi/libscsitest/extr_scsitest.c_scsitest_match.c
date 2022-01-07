
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int device_t ;
typedef int cfdata_t ;


 int CDBLOCKSIZE ;
 int MYCDISO ;
 int RUMPUSER_FT_REG ;
 int RUMPUSER_OPEN_RDWR ;
 int isofd ;
 int mycdsize ;
 scalar_t__ rumpuser_getfileinfo (int ,int*,int*,int*) ;
 int rumpuser_open (int ,int ,int*) ;

int
scsitest_match(device_t parent, cfdata_t match, void *aux)
{
 isofd = -2;


 return 1;
}
