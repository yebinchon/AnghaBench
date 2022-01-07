
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int option; int section; int file; } ;
typedef TYPE_1__ svn_cmdline__config_argument_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int ARRAYLEN (int *) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int strcmp (int ,int ) ;
 int string_in_array (int ,int *,int,int *) ;
 int * svn__empty_config_sections ;
 int * svn__valid_config_files ;
 int * svn__valid_config_options ;
 int * svn__valid_config_sections ;

__attribute__((used)) static svn_error_t *
validate_config_option(svn_cmdline__config_argument_t *config_option,
                       apr_pool_t *scratch_pool)
{
  svn_boolean_t arbitrary_keys = FALSE;






  SVN_ERR(string_in_array(config_option->file, svn__valid_config_files,
                          ( sizeof((svn__valid_config_files)) / sizeof((svn__valid_config_files)[0]) ),
                          scratch_pool));
  SVN_ERR(string_in_array(config_option->section, svn__valid_config_sections,
                          ( sizeof((svn__valid_config_sections)) / sizeof((svn__valid_config_sections)[0]) ),
                          scratch_pool));



    {
      int i;

      for (i = 0; i < ( sizeof((svn__empty_config_sections)) / sizeof((svn__empty_config_sections)[0]) ); i++)
        {
        if (!strcmp(config_option->section, svn__empty_config_sections[i]))
          arbitrary_keys = TRUE;
        }
    }

  if (! arbitrary_keys)
    SVN_ERR(string_in_array(config_option->option, svn__valid_config_options,
                            ( sizeof((svn__valid_config_options)) / sizeof((svn__valid_config_options)[0]) ),
                            scratch_pool));



  return SVN_NO_ERROR;
}
