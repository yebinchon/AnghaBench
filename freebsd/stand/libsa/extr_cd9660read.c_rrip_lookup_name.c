
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iso_directory_record {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int* flags; TYPE_1__ h; } ;
typedef TYPE_2__ ISO_RRIP_ALTNAME ;




 int RRIP_NAME ;
 int isonum_711 (int ) ;
 scalar_t__ susp_lookup_record (int ,struct iso_directory_record*,int) ;

__attribute__((used)) static const char *
rrip_lookup_name(struct iso_directory_record *dp, int lenskip, size_t *len)
{
 ISO_RRIP_ALTNAME *p;

 if (len == ((void*)0))
  return (((void*)0));

 p = (ISO_RRIP_ALTNAME *)susp_lookup_record(RRIP_NAME, dp, lenskip);
 if (p == ((void*)0))
  return (((void*)0));
 switch (*p->flags) {
 case 129:
  *len = 1;
  return (".");
 case 128:
  *len = 2;
  return ("..");
 case 0:
  *len = isonum_711(p->h.length) - 5;
  return ((char *)p + 5);
 default:




  return (((void*)0));
 }
}
