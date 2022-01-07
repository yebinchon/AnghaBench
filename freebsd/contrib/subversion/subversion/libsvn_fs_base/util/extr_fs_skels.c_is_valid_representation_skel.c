
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* children; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ is_valid_checksum_skel (TYPE_1__*) ;
 int is_valid_rep_delta_chunk_skel (TYPE_1__*) ;
 int svn_skel__list_length (TYPE_1__*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_1__*,char*) ;

__attribute__((used)) static svn_boolean_t
is_valid_representation_skel(svn_skel_t *skel)
{
  int len = svn_skel__list_length(skel);
  svn_skel_t *header;
  int header_len;



  if (len < 2)
    return FALSE;



  header = skel->children;
  header_len = svn_skel__list_length(header);
  if (! (((header_len == 2)
          && (header->children->is_atom)
          && (header->children->next->is_atom))
         || ((header_len == 3)
             && (header->children->is_atom)
             && (header->children->next->is_atom)
             && (is_valid_checksum_skel(header->children->next->next)))
         || ((header_len == 4)
             && (header->children->is_atom)
             && (header->children->next->is_atom)
             && (is_valid_checksum_skel(header->children->next->next))
             && (is_valid_checksum_skel(header->children->next->next->next)))))
    return FALSE;


  if ((len == 2)
      && (svn_skel__matches_atom(header->children, "fulltext")))
    return TRUE;


  if ((len >= 2)
      && (svn_skel__matches_atom(header->children, "delta")))
    {

      svn_skel_t *chunk = skel->children->next;


      while (chunk)
        {
          if (! is_valid_rep_delta_chunk_skel(chunk))
            return FALSE;
          chunk = chunk->next;
        }


      return TRUE;
    }

  return FALSE;
}
