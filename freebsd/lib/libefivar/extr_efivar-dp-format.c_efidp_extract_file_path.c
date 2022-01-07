
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const_efidp ;
struct TYPE_2__ {int PathName; } ;
typedef TYPE_1__ FILEPATH_DEVICE_PATH ;


 int ucs2_to_utf8 (int ,char**) ;

char *
efidp_extract_file_path(const_efidp dp)
{
 const FILEPATH_DEVICE_PATH *fp;
 char *name = ((void*)0);

 fp = (const void *)dp;
 ucs2_to_utf8(fp->PathName, &name);
 return name;
}
