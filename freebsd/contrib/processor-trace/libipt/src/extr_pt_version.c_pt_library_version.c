
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_version {int member_4; int member_3; int member_2; int member_1; int member_0; } ;


 int PT_VERSION_BUILD ;
 int PT_VERSION_EXT ;
 int PT_VERSION_MAJOR ;
 int PT_VERSION_MINOR ;
 int PT_VERSION_PATCH ;

struct pt_version pt_library_version(void)
{
 struct pt_version v = {
                 PT_VERSION_MAJOR,
                 PT_VERSION_MINOR,
                 PT_VERSION_PATCH,
                 PT_VERSION_BUILD,
               PT_VERSION_EXT
 };

 return v;
}
