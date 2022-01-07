
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_error_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_base_deleted ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
convert_to_working_status(svn_wc__db_status_t *working_status,
                          svn_wc__db_status_t status)
{
  svn_wc__db_status_t work_status = status;

  SVN_ERR_ASSERT(work_status == svn_wc__db_status_normal
                 || work_status == svn_wc__db_status_not_present
                 || work_status == svn_wc__db_status_base_deleted
                 || work_status == svn_wc__db_status_incomplete
                 || work_status == svn_wc__db_status_excluded);

  if (work_status == svn_wc__db_status_excluded)
    {
      *working_status = svn_wc__db_status_excluded;
    }
  else if (work_status == svn_wc__db_status_not_present
           || work_status == svn_wc__db_status_base_deleted)
    {






      *working_status = svn_wc__db_status_deleted;
    }
  else
    {



      *working_status = svn_wc__db_status_added;
    }

  return SVN_NO_ERROR;
}
