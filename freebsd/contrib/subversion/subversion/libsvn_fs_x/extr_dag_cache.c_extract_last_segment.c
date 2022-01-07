
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int svn_stringbuf_appendbytes (int *,char const*,int) ;
 int svn_stringbuf_setempty (int *) ;

__attribute__((used)) static svn_boolean_t
extract_last_segment(const svn_string_t *path,
                     svn_string_t *directory,
                     svn_stringbuf_t *entry)
{
  const char *segment_start;
  const char *parent_end;


  if (path->len == 0)
    return FALSE;



  segment_start = path->data + path->len - 1;
  while (*segment_start != '/' && segment_start != path->data)
    --segment_start;


  if (segment_start == path->data)
    {

      directory->data = "";
      directory->len = 0;

      svn_stringbuf_setempty(entry);
      svn_stringbuf_appendbytes(entry, path->data, path->len);

      return TRUE;
    }


  parent_end = segment_start;
  while (parent_end[-1] == '/')
    --parent_end;


  directory->data = path->data;
  directory->len = parent_end - path->data;

  ++segment_start;
  svn_stringbuf_setempty(entry);
  svn_stringbuf_appendbytes(entry, segment_start,
                            path->len - (segment_start - path->data));

  return TRUE;
}
