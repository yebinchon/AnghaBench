
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_ivrs_hdr_args {int i; int * ptr; } ;
typedef int ACPI_IVRS_HARDWARE ;


 int ivrs_hdr_find_iter ;
 int ivrs_hdr_iterate_tbl (int ,struct find_ivrs_hdr_args*) ;

__attribute__((used)) static ACPI_IVRS_HARDWARE *
ivhd_find_by_index(int idx)
{
 struct find_ivrs_hdr_args fi;

 fi.i = idx;
 fi.ptr = ((void*)0);

 ivrs_hdr_iterate_tbl(ivrs_hdr_find_iter, &fi);

 return ((ACPI_IVRS_HARDWARE *)fi.ptr);
}
