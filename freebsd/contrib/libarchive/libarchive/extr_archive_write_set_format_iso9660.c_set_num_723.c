
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int archive_be16enc (unsigned char*,int ) ;
 int archive_le16enc (unsigned char*,int ) ;

__attribute__((used)) static void
set_num_723(unsigned char *p, uint16_t value)
{
 archive_le16enc(p, value);
 archive_be16enc(p+2, value);
}
