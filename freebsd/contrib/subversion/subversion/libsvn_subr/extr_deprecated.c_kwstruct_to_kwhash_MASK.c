#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ id; scalar_t__ url; scalar_t__ author; scalar_t__ date; scalar_t__ revision; } ;
typedef  TYPE_1__ svn_subst_keywords_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_KEYWORD_AUTHOR_LONG ; 
 int /*<<< orphan*/  SVN_KEYWORD_AUTHOR_SHORT ; 
 int /*<<< orphan*/  SVN_KEYWORD_DATE_LONG ; 
 int /*<<< orphan*/  SVN_KEYWORD_DATE_SHORT ; 
 int /*<<< orphan*/  SVN_KEYWORD_ID ; 
 int /*<<< orphan*/  SVN_KEYWORD_REVISION_LONG ; 
 int /*<<< orphan*/  SVN_KEYWORD_REVISION_MEDIUM ; 
 int /*<<< orphan*/  SVN_KEYWORD_REVISION_SHORT ; 
 int /*<<< orphan*/  SVN_KEYWORD_URL_LONG ; 
 int /*<<< orphan*/  SVN_KEYWORD_URL_SHORT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static apr_hash_t *
FUNC2(const svn_subst_keywords_t *kwstruct,
                   apr_pool_t *pool)
{
  apr_hash_t *kwhash;

  if (kwstruct == NULL)
    return NULL;

  kwhash = FUNC0(pool);

  if (kwstruct->revision)
    {
      FUNC1(kwhash, SVN_KEYWORD_REVISION_LONG, kwstruct->revision);
      FUNC1(kwhash, SVN_KEYWORD_REVISION_MEDIUM, kwstruct->revision);
      FUNC1(kwhash, SVN_KEYWORD_REVISION_SHORT, kwstruct->revision);
    }
  if (kwstruct->date)
    {
      FUNC1(kwhash, SVN_KEYWORD_DATE_LONG, kwstruct->date);
      FUNC1(kwhash, SVN_KEYWORD_DATE_SHORT, kwstruct->date);
    }
  if (kwstruct->author)
    {
      FUNC1(kwhash, SVN_KEYWORD_AUTHOR_LONG, kwstruct->author);
      FUNC1(kwhash, SVN_KEYWORD_AUTHOR_SHORT, kwstruct->author);
    }
  if (kwstruct->url)
    {
      FUNC1(kwhash, SVN_KEYWORD_URL_LONG, kwstruct->url);
      FUNC1(kwhash, SVN_KEYWORD_URL_SHORT, kwstruct->url);
    }
  if (kwstruct->id)
    {
      FUNC1(kwhash, SVN_KEYWORD_ID, kwstruct->id);
    }

  return kwhash;
}