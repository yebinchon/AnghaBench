
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Type; } ;
typedef TYPE_1__ ACPI_IVRS_HEADER ;


 int ivhd_count ;
 scalar_t__ ivrs_is_ivhd (int ) ;

__attribute__((used)) static int
ivhd_count_iter(ACPI_IVRS_HEADER * ivrs_he, void *arg)
{

 if (ivrs_is_ivhd(ivrs_he->Type))
  ivhd_count++;

 return (1);
}
