
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int FALSE ;
 int TRUE ;
 int terminal_cleanup_handler (void*,int ,int ) ;

__attribute__((used)) static apr_status_t terminal_plain_cleanup(void *baton)
{
  return terminal_cleanup_handler(baton, FALSE, TRUE);
}
