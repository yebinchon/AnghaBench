
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int * filtered_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;


 int archive_le32enc (int *,size_t) ;

__attribute__((used)) static void write_filter_data(struct rar5* rar, uint32_t offset,
    uint32_t value)
{
 archive_le32enc(&rar->cstate.filtered_buf[offset], value);
}
