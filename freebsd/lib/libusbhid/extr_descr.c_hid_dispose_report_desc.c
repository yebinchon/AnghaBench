
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int report_desc_t ;


 int free (int ) ;

void
hid_dispose_report_desc(report_desc_t r)
{

 free(r);
}
