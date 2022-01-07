
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_2__* cfg_page; } ;
typedef TYPE_3__ ses_cache_t ;
struct TYPE_5__ {int const* gen_code; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;


 scalar_t__ scsi_4btoul (int const*) ;

__attribute__((used)) static int
ses_config_cache_valid(ses_cache_t *ses_cache, const uint8_t *gen_code)
{
 uint32_t cache_gc;
 uint32_t cur_gc;

 if (ses_cache->cfg_page == ((void*)0))
  return (0);

 cache_gc = scsi_4btoul(ses_cache->cfg_page->hdr.gen_code);
 cur_gc = scsi_4btoul(gen_code);
 return (cache_gc == cur_gc);
}
