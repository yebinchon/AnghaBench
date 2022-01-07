
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int EDOM ;
 int ISP2 (scalar_t__) ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_MINBLOCKSIZE ;
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ;

int
zvol_check_volblocksize(uint64_t volblocksize)
{
 if (volblocksize < SPA_MINBLOCKSIZE ||
     volblocksize > SPA_OLD_MAXBLOCKSIZE ||
     !ISP2(volblocksize))
  return (SET_ERROR(EDOM));

 return (0);
}
