
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_buf {scalar_t__ magic; } ;


 scalar_t__ PTOV (scalar_t__) ;
 scalar_t__ dcons_paddr ;

__attribute__((used)) static void
fw_cleanup()
{
    struct dcons_buf *db;


    if (dcons_paddr) {
 db = (struct dcons_buf *)PTOV(dcons_paddr);
 db->magic = 0;
    }
}
