
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vendor ;
struct TYPE_2__ {int revision; int product; int vendor; } ;
struct device_match_result {TYPE_1__ inq_data; } ;
typedef int revision ;
typedef int product ;


 int cam_strvis (char*,int ,int,int) ;
 int sprintf (char*,char*,char*,char*,char*) ;

__attribute__((used)) static int
print_dev_scsi(struct device_match_result *dev_result, char *tmpstr)
{
 char vendor[16], product[48], revision[16];

 cam_strvis(vendor, dev_result->inq_data.vendor,
     sizeof(dev_result->inq_data.vendor), sizeof(vendor));
 cam_strvis(product, dev_result->inq_data.product,
     sizeof(dev_result->inq_data.product), sizeof(product));
 cam_strvis(revision, dev_result->inq_data.revision,
     sizeof(dev_result->inq_data.revision), sizeof(revision));
 sprintf(tmpstr, "<%s %s %s>", vendor, product, revision);

 return (0);
}
