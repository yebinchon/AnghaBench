
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * file; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int svn_error_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_file_pool (TYPE_1__*) ;
 int open_pack_or_rev_file (TYPE_1__*,int ,int ) ;

__attribute__((used)) static svn_error_t *
auto_open(svn_fs_x__revision_file_t *file)
{
  if (file->file == ((void*)0))
    SVN_ERR(open_pack_or_rev_file(file, FALSE, get_file_pool(file)));

  return SVN_NO_ERROR;
}
