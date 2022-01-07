
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int pool; int revision; int fs; int * rfile; } ;
typedef TYPE_1__ shared_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__rev_file_init (int **,int ,int ,int ) ;

__attribute__((used)) static svn_error_t*
auto_open_shared_file(shared_file_t *file)
{
  if (file->rfile == ((void*)0))
    SVN_ERR(svn_fs_x__rev_file_init(&file->rfile, file->fs,
                                    file->revision, file->pool));

  return SVN_NO_ERROR;
}
