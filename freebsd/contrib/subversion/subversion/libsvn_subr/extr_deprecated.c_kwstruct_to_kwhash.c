
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; scalar_t__ url; scalar_t__ author; scalar_t__ date; scalar_t__ revision; } ;
typedef TYPE_1__ svn_subst_keywords_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_KEYWORD_AUTHOR_LONG ;
 int SVN_KEYWORD_AUTHOR_SHORT ;
 int SVN_KEYWORD_DATE_LONG ;
 int SVN_KEYWORD_DATE_SHORT ;
 int SVN_KEYWORD_ID ;
 int SVN_KEYWORD_REVISION_LONG ;
 int SVN_KEYWORD_REVISION_MEDIUM ;
 int SVN_KEYWORD_REVISION_SHORT ;
 int SVN_KEYWORD_URL_LONG ;
 int SVN_KEYWORD_URL_SHORT ;
 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,int ,scalar_t__) ;

__attribute__((used)) static apr_hash_t *
kwstruct_to_kwhash(const svn_subst_keywords_t *kwstruct,
                   apr_pool_t *pool)
{
  apr_hash_t *kwhash;

  if (kwstruct == ((void*)0))
    return ((void*)0);

  kwhash = apr_hash_make(pool);

  if (kwstruct->revision)
    {
      svn_hash_sets(kwhash, SVN_KEYWORD_REVISION_LONG, kwstruct->revision);
      svn_hash_sets(kwhash, SVN_KEYWORD_REVISION_MEDIUM, kwstruct->revision);
      svn_hash_sets(kwhash, SVN_KEYWORD_REVISION_SHORT, kwstruct->revision);
    }
  if (kwstruct->date)
    {
      svn_hash_sets(kwhash, SVN_KEYWORD_DATE_LONG, kwstruct->date);
      svn_hash_sets(kwhash, SVN_KEYWORD_DATE_SHORT, kwstruct->date);
    }
  if (kwstruct->author)
    {
      svn_hash_sets(kwhash, SVN_KEYWORD_AUTHOR_LONG, kwstruct->author);
      svn_hash_sets(kwhash, SVN_KEYWORD_AUTHOR_SHORT, kwstruct->author);
    }
  if (kwstruct->url)
    {
      svn_hash_sets(kwhash, SVN_KEYWORD_URL_LONG, kwstruct->url);
      svn_hash_sets(kwhash, SVN_KEYWORD_URL_SHORT, kwstruct->url);
    }
  if (kwstruct->id)
    {
      svn_hash_sets(kwhash, SVN_KEYWORD_ID, kwstruct->id);
    }

  return kwhash;
}
