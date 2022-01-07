
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,int) ;

void
bz_internal_error(int errorcode)
{
    panic("bzipfs: critical error %d in bzip2 library occured", errorcode);
}
