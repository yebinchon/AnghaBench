
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvpair_header {int dummy; } ;



size_t
nvpair_header_size(void)
{

 return (sizeof(struct nvpair_header));
}
