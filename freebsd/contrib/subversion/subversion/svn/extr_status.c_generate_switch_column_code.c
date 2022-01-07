
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ file_external; scalar_t__ switched; } ;
typedef TYPE_1__ svn_client_status_t ;



__attribute__((used)) static char
generate_switch_column_code(const svn_client_status_t *status)
{
  if (status->switched)
    return 'S';
  else if (status->file_external)
    return 'X';
  else
    return ' ';
}
