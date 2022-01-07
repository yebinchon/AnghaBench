
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;


 int pte_not_supported ;

int pt_mk_section(struct pt_section **psection, const char *filename,
    uint64_t offset, uint64_t size)
{
 (void) psection;
 (void) filename;
 (void) offset;
 (void) size;


 return -pte_not_supported;
}
