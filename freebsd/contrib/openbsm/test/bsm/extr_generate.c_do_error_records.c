
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_number; int error_name; } ;


 TYPE_1__* error_list ;
 int error_list_count ;
 int generate_error_record (char const*,int ,int ) ;

__attribute__((used)) static void
do_error_records(const char *directory)
{
 int i;

 for (i = 0; i < error_list_count; i++)
  generate_error_record(directory, error_list[i].error_name,
      error_list[i].error_number);
}
