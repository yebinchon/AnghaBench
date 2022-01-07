
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision; int model; } ;
struct device_match_result {TYPE_1__ ident_data; } ;
typedef int revision ;
typedef int product ;


 int cam_strvis (char*,int ,int,int) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int
print_dev_ata(struct device_match_result *dev_result, char *tmpstr)
{
 char product[48], revision[16];

 cam_strvis(product, dev_result->ident_data.model,
     sizeof(dev_result->ident_data.model), sizeof(product));
 cam_strvis(revision, dev_result->ident_data.revision,
     sizeof(dev_result->ident_data.revision), sizeof(revision));
 sprintf(tmpstr, "<%s %s>", product, revision);

 return (0);
}
