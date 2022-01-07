
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KASSERT (int,char*) ;
 int * size2mask ;

uint64_t
vie_size2mask(int size)
{
 KASSERT(size == 1 || size == 2 || size == 4 || size == 8,
     ("vie_size2mask: invalid size %d", size));
 return (size2mask[size]);
}
