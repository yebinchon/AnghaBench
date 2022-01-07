
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;


 int LOGICAL_BLOCK_SIZE ;
 unsigned char RRIP_ER_DSC_SIZE ;
 unsigned char RRIP_ER_ID_SIZE ;
 unsigned char RRIP_ER_SIZE ;
 unsigned char RRIP_ER_SRC_SIZE ;
 int memcpy (unsigned char*,int ,unsigned char) ;
 int memset (unsigned char*,int ,int ) ;
 int rrip_descriptor ;
 int rrip_identifier ;
 int rrip_source ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int ) ;

__attribute__((used)) static int
write_rr_ER(struct archive_write *a)
{
 unsigned char *p;

 p = wb_buffptr(a);

 memset(p, 0, LOGICAL_BLOCK_SIZE);
 p[0] = 'E';
 p[1] = 'R';
 p[3] = 0x01;
 p[2] = RRIP_ER_SIZE;
 p[4] = RRIP_ER_ID_SIZE;
 p[5] = RRIP_ER_DSC_SIZE;
 p[6] = RRIP_ER_SRC_SIZE;
 p[7] = 0x01;
 memcpy(&p[8], rrip_identifier, p[4]);
 memcpy(&p[8+p[4]], rrip_descriptor, p[5]);
 memcpy(&p[8+p[4]+p[5]], rrip_source, p[6]);

 return (wb_consume(a, LOGICAL_BLOCK_SIZE));
}
