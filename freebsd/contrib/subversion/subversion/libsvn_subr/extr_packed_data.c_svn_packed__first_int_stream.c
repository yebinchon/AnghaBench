
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_packed__int_stream_t ;
struct TYPE_3__ {int * first_int_stream; } ;
typedef TYPE_1__ svn_packed__data_root_t ;



svn_packed__int_stream_t *
svn_packed__first_int_stream(svn_packed__data_root_t *root)
{
  return root->first_int_stream;
}
