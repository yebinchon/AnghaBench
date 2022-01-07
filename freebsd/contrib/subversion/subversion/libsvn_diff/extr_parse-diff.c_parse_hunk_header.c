
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {int modified_length; int modified_start; int original_length; int original_start; } ;
typedef TYPE_2__ svn_diff_hunk_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 int parse_range (int *,int *,int ) ;
 int starts_with (char const*,char const*) ;
 int strlen (char const*) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 TYPE_1__* svn_stringbuf_create_ensure (int,int *) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;

__attribute__((used)) static svn_boolean_t
parse_hunk_header(const char *header, svn_diff_hunk_t *hunk,
                  const char *atat, apr_pool_t *pool)
{
  const char *p;
  const char *start;
  svn_stringbuf_t *range;

  p = header + strlen(atat);
  if (*p != ' ')

    return FALSE;
  p++;
  if (*p != '-')

    return FALSE;

  range = svn_stringbuf_create_ensure(31, pool);
  start = ++p;
  while (*p && *p != ' ')
    {
      p++;
    }

  if (*p != ' ')

    return FALSE;

  svn_stringbuf_appendbytes(range, start, p - start);


  if (! parse_range(&hunk->original_start, &hunk->original_length, range->data))
    return FALSE;


  svn_stringbuf_setempty(range);
  p++;
  if (*p != '+')

    return FALSE;

  start = ++p;
  while (*p && *p != ' ')
    {
      p++;
    }
  if (*p != ' ')

    return FALSE;

  svn_stringbuf_appendbytes(range, start, p - start);


  p++;
  if (! starts_with(p, atat))
    return FALSE;





  if (! parse_range(&hunk->modified_start, &hunk->modified_length, range->data))
    return FALSE;


  return TRUE;
}
