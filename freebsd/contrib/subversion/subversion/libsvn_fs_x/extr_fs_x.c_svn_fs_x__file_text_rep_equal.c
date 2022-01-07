
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expanded_size; int sha1_digest; int md5_digest; int id; } ;
typedef TYPE_1__ svn_fs_x__representation_t ;
typedef scalar_t__ svn_boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ svn_fs_x__id_eq (int *,int *) ;

svn_boolean_t
svn_fs_x__file_text_rep_equal(svn_fs_x__representation_t *a,
                              svn_fs_x__representation_t *b)
{
  svn_boolean_t a_empty = a == ((void*)0) || a->expanded_size == 0;
  svn_boolean_t b_empty = b == ((void*)0) || b->expanded_size == 0;


  if (a_empty && b_empty)
    return TRUE;

  if (a_empty != b_empty)
    return FALSE;



  if (svn_fs_x__id_eq(&a->id, &b->id))
    return TRUE;



  return memcmp(a->md5_digest, b->md5_digest, sizeof(a->md5_digest)) == 0
      && memcmp(a->sha1_digest, b->sha1_digest, sizeof(a->sha1_digest)) == 0;
}
