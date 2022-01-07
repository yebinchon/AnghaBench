
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct open_file {int dummy; } ;
struct iso_directory_record {char* name; int length; int name_len; } ;
struct TYPE_3__ {int length; int type; } ;
struct TYPE_4__ {int* signature; int len_skp; TYPE_1__ h; } ;
typedef TYPE_2__ ISO_SUSP_PRESENT ;
typedef int ISO_RRIP_EXTREF ;


 int SUSP_EXTREF ;
 int SUSP_PRESENT ;
 scalar_t__ bcmp (int ,int ,int) ;
 int isonum_711 (int ) ;
 scalar_t__ susp_lookup_record (struct open_file*,int ,struct iso_directory_record*,int ) ;

__attribute__((used)) static int
rrip_check(struct open_file *f, struct iso_directory_record *dp, int *lenskip)
{
 ISO_SUSP_PRESENT *sp;
 ISO_RRIP_EXTREF *er;
 char *p;


 p = dp->name + isonum_711(dp->name_len);
 if (p > (char *)dp + isonum_711(dp->length))
  return (0);
 sp = (ISO_SUSP_PRESENT *)p;
 if (bcmp(sp->h.type, SUSP_PRESENT, 2) != 0)
  return (0);
 if (isonum_711(sp->h.length) != sizeof(ISO_SUSP_PRESENT))
  return (0);
 if (sp->signature[0] != 0xbe || sp->signature[1] != 0xef)
  return (0);
 *lenskip = isonum_711(sp->len_skp);






 er = (ISO_RRIP_EXTREF *)susp_lookup_record(f, SUSP_EXTREF, dp, 0);
 if (er == ((void*)0))
  return (0);
 return (1);
}
