
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor ;
struct sep_identify_data {int firmware_rev; int product_rev; int product_id; int vendor_id; } ;
typedef int revision ;
typedef int product ;
typedef int fw ;


 int cam_strvis (char*,int ,int,int) ;
 int printf (char*,char*,char*,char*,char*) ;

void
semb_print_ident_short(struct sep_identify_data *ident_data)
{
 char vendor[9], product[17], revision[5], fw[5];

 cam_strvis(vendor, ident_data->vendor_id, 8, sizeof(vendor));
 cam_strvis(product, ident_data->product_id, 16, sizeof(product));
 cam_strvis(revision, ident_data->product_rev, 4, sizeof(revision));
 cam_strvis(fw, ident_data->firmware_rev, 4, sizeof(fw));
 printf("<%s %s %s %s>", vendor, product, revision, fw);
}
