
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {char* data; int len; } ;
typedef TYPE_2__ svn_string_t ;


 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;

__attribute__((used)) static const char *
next_entry_name(svn_string_t *path,
                svn_stringbuf_t *entry)
{
  const char *segment_start;
  const char *segment_end;



  segment_start = path->data + path->len;
  while (*segment_start == '/')
    ++segment_start;


  if (*segment_start == '\0')
    return ((void*)0);



  segment_end = segment_start;
  while (*segment_end != '/' && *segment_end != '\0')
    ++segment_end;


  svn_stringbuf_setempty(entry);
  svn_stringbuf_appendbytes(entry, segment_start,
                            segment_end - segment_start);


  path->len = segment_end - path->data;


  return entry->data;
}
