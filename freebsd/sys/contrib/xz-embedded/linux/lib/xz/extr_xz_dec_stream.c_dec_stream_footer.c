
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* buf; } ;
struct TYPE_3__ {int size; } ;
struct xz_dec {scalar_t__ check_type; TYPE_2__ temp; TYPE_1__ index; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int FOOTER_MAGIC ;
 int FOOTER_MAGIC_SIZE ;
 int XZ_DATA_ERROR ;
 int XZ_STREAM_END ;
 int get_le32 (scalar_t__*) ;
 int memeq (scalar_t__*,int ,int ) ;
 int xz_crc32 (scalar_t__*,int,int ) ;

__attribute__((used)) static enum xz_ret dec_stream_footer(struct xz_dec *s)
{
 if (!memeq(s->temp.buf + 10, FOOTER_MAGIC, FOOTER_MAGIC_SIZE))
  return XZ_DATA_ERROR;

 if (xz_crc32(s->temp.buf + 4, 6, 0) != get_le32(s->temp.buf))
  return XZ_DATA_ERROR;






 if ((s->index.size >> 2) != get_le32(s->temp.buf + 4))
  return XZ_DATA_ERROR;

 if (s->temp.buf[8] != 0 || s->temp.buf[9] != s->check_type)
  return XZ_DATA_ERROR;





 return XZ_STREAM_END;
}
