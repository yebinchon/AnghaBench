
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor ;
struct sep_identify_data {int firmware_rev; int product_rev; int product_id; int vendor_id; } ;
struct device_match_result {int ident_data; } ;
typedef int revision ;
typedef int product ;
typedef int fw ;


 int cam_strvis (char*,int ,int,int) ;
 int sprintf (char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static int
print_dev_semb(struct device_match_result *dev_result, char *tmpstr)
{
 struct sep_identify_data *sid;
 char vendor[16], product[48], revision[16], fw[5];

 sid = (struct sep_identify_data *)&dev_result->ident_data;
 cam_strvis(vendor, sid->vendor_id,
     sizeof(sid->vendor_id), sizeof(vendor));
 cam_strvis(product, sid->product_id,
     sizeof(sid->product_id), sizeof(product));
 cam_strvis(revision, sid->product_rev,
     sizeof(sid->product_rev), sizeof(revision));
 cam_strvis(fw, sid->firmware_rev,
     sizeof(sid->firmware_rev), sizeof(fw));
 sprintf(tmpstr, "<%s %s %s %s>", vendor, product, revision, fw);

 return (0);
}
