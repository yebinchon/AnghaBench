
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct gpt_hdr {int hdr_lba_self; int hdr_revision; int hdr_entsz; scalar_t__ hdr_lba_alt; int hdr_sig; } ;
struct gpt_ent {int dummy; } ;
struct dsk {int dummy; } ;
typedef int hdr ;
struct TYPE_2__ {char* secbuf; } ;


 int DEV_BSIZE ;
 int GPT_HDR_SIG ;
 TYPE_1__* dmadat ;
 scalar_t__ drvread (struct dsk*,char*,int,int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (struct gpt_hdr*,char*,int) ;

__attribute__((used)) static uint64_t
drvsize_gpt(struct dsk *dskp)
{
 return (0);

}
