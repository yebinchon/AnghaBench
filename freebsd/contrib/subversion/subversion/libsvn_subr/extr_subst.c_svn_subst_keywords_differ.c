
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* url; TYPE_3__* author; TYPE_2__* date; TYPE_1__* revision; } ;
typedef TYPE_5__ svn_subst_keywords_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {int data; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int data; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ strcmp (int ,int ) ;

svn_boolean_t
svn_subst_keywords_differ(const svn_subst_keywords_t *a,
                          const svn_subst_keywords_t *b,
                          svn_boolean_t compare_values)
{
  if (((a == ((void*)0)) && (b == ((void*)0)))

      || ((a == ((void*)0))
          && (b->revision == ((void*)0))
          && (b->date == ((void*)0))
          && (b->author == ((void*)0))
          && (b->url == ((void*)0)))

      || ((b == ((void*)0)) && (a->revision == ((void*)0))
          && (a->date == ((void*)0))
          && (a->author == ((void*)0))
          && (a->url == ((void*)0)))

      || ((a != ((void*)0)) && (b != ((void*)0))
          && (b->revision == ((void*)0))
          && (b->date == ((void*)0))
          && (b->author == ((void*)0))
          && (b->url == ((void*)0))
          && (a->revision == ((void*)0))
          && (a->date == ((void*)0))
          && (a->author == ((void*)0))
          && (a->url == ((void*)0))))
    {
      return FALSE;
    }
  else if ((a == ((void*)0)) || (b == ((void*)0)))
    return TRUE;



  if ((! a->revision) != (! b->revision))
    return TRUE;
  else if ((compare_values && (a->revision != ((void*)0)))
           && (strcmp(a->revision->data, b->revision->data) != 0))
    return TRUE;

  if ((! a->date) != (! b->date))
    return TRUE;
  else if ((compare_values && (a->date != ((void*)0)))
           && (strcmp(a->date->data, b->date->data) != 0))
    return TRUE;

  if ((! a->author) != (! b->author))
    return TRUE;
  else if ((compare_values && (a->author != ((void*)0)))
           && (strcmp(a->author->data, b->author->data) != 0))
    return TRUE;

  if ((! a->url) != (! b->url))
    return TRUE;
  else if ((compare_values && (a->url != ((void*)0)))
           && (strcmp(a->url->data, b->url->data) != 0))
    return TRUE;



  return FALSE;
}
