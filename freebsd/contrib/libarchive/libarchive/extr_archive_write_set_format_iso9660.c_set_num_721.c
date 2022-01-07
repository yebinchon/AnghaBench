
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int archive_le16enc (unsigned char*,int ) ;

__attribute__((used)) static inline void
set_num_721(unsigned char *p, uint16_t value)
{
 archive_le16enc(p, value);
}
