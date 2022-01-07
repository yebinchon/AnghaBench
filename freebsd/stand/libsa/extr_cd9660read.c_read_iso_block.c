
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int daddr_t ;


 int drvread (int *,void*,int,int) ;
 int dsk ;

__attribute__((used)) static int
read_iso_block(void *buffer, daddr_t blkno)
{

 return (drvread(&dsk, buffer, blkno * 4, 4));
}
