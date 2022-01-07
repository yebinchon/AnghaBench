
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;


 int LOGICAL_BLOCK_SIZE ;
 int VDT_TERMINATOR ;
 int set_VD_bp (unsigned char*,int ,int) ;
 int set_unused_field_bp (unsigned char*,int,int ) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int ) ;

__attribute__((used)) static int
write_VD_terminator(struct archive_write *a)
{
 unsigned char *bp;

 bp = wb_buffptr(a) -1;
 set_VD_bp(bp, VDT_TERMINATOR, 1);
 set_unused_field_bp(bp, 8, LOGICAL_BLOCK_SIZE);

 return (wb_consume(a, LOGICAL_BLOCK_SIZE));
}
