
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; size_t len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef size_t apr_size_t ;



__attribute__((used)) static const char *
next_segment(svn_stringbuf_t *segment,
             const char *path)
{
  apr_size_t len;
  char c;


  for (len = 0, c = *path; c; c = path[++len])
    if (c == '/')
      {

        segment->data[len] = 0;
        segment->len = len;



        while (path[++len] == '/')
          ;




        return path + len;
      }
    else
      {


        segment->data[len] = c;
      }


  segment->data[len] = 0;
  segment->len = len;


  return ((void*)0);
}
