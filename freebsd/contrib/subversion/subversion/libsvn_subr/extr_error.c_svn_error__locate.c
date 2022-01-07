
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_atomic_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_threadkey_private_set (void*,scalar_t__) ;
 char const* error_file ;
 scalar_t__ error_file_key ;
 long error_line ;
 scalar_t__ error_line_key ;
 int locate_init_once ;
 int svn_atomic__init_once_no_error (int volatile*,int ,int *) ;

void
svn_error__locate(const char *file, long line)
{
}
