
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
struct TYPE_6__ {TYPE_3__ revision; } ;
typedef TYPE_1__ svn_wc_external_item2_t ;
struct TYPE_7__ {scalar_t__ member_0; scalar_t__ kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,char const*) ;
 int * svn_error_createf (int ,int *,int ,int ,char const*,char const*) ;
 scalar_t__ svn_opt_parse_revision (TYPE_3__*,TYPE_2__*,char const*,int *) ;
 scalar_t__ svn_opt_revision_date ;
 scalar_t__ svn_opt_revision_number ;
 scalar_t__ svn_opt_revision_unspecified ;

__attribute__((used)) static svn_error_t *
find_and_remove_externals_revision(int *rev_idx,
                                   const char **rev_str,
                                   const char **line_parts,
                                   int num_line_parts,
                                   svn_wc_external_item2_t *item,
                                   const char *parent_directory_display,
                                   const char *line,
                                   apr_pool_t *pool)
{
  int i;

  for (i = 0; i < 2; ++i)
    {
      const char *token = line_parts[i];

      if (token[0] == '-' && token[1] == 'r')
        {
          svn_opt_revision_t end_revision = { svn_opt_revision_unspecified };
          const char *digits_ptr;
          int shift_count;
          int j;

          *rev_idx = i;

          if (token[2] == '\0')
            {


              if (num_line_parts != 4)
                goto parse_error;

              shift_count = 2;
              digits_ptr = line_parts[i+1];
            }
          else
            {


              if (num_line_parts != 3)
                goto parse_error;

              shift_count = 1;
              digits_ptr = token+2;
            }

          if (svn_opt_parse_revision(&item->revision,
                                     &end_revision,
                                     digits_ptr, pool) != 0)
            goto parse_error;

          if (end_revision.kind != svn_opt_revision_unspecified)
            goto parse_error;

          if (item->revision.kind != svn_opt_revision_number
              && item->revision.kind != svn_opt_revision_date)
            goto parse_error;



          for (j = i; j < num_line_parts-shift_count; ++j)
            line_parts[j] = line_parts[j+shift_count];
          line_parts[num_line_parts-shift_count] = ((void*)0);

          *rev_str = apr_psprintf(pool, "-r%s", digits_ptr);



          return SVN_NO_ERROR;
        }
    }



  if (num_line_parts == 2)
    return SVN_NO_ERROR;

 parse_error:
  return svn_error_createf
    (SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION, ((void*)0),
     _("Error parsing %s property on '%s': '%s'"),
     SVN_PROP_EXTERNALS,
     parent_directory_display,
     line);
}
