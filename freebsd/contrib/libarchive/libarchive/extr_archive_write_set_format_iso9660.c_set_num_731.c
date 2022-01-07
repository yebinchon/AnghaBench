
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int archive_le32enc (unsigned char*,int ) ;

__attribute__((used)) static inline void
set_num_731(unsigned char *p, uint32_t value)
{
 archive_le32enc(p, value);
}
