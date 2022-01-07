
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct find_ivrs_hdr_args {scalar_t__ i; TYPE_1__* ptr; } ;
struct TYPE_3__ {int Type; } ;
typedef TYPE_1__ ACPI_IVRS_HEADER ;


 scalar_t__ ivrs_is_ivhd (int ) ;

__attribute__((used)) static int
ivrs_hdr_find_iter(ACPI_IVRS_HEADER * ivrs_hdr, void *args)
{
 struct find_ivrs_hdr_args *fi;

 fi = (struct find_ivrs_hdr_args *)args;
 if (ivrs_is_ivhd(ivrs_hdr->Type)) {
  if (fi->i == 0) {
   fi->ptr = ivrs_hdr;
   return (0);
  }
  fi->i--;
 }

 return (1);
}
