#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  option_names_case_sensitive; int /*<<< orphan*/  sections; int /*<<< orphan*/  section_names_case_sensitive; int /*<<< orphan*/  x_values; } ;
typedef  TYPE_1__ svn_config_t ;
struct TYPE_12__ {int /*<<< orphan*/  options; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_section_t ;
struct TYPE_13__ {char const* value; char const* x_value; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_config_t **cfgp,
               const svn_config_t *src,
               apr_pool_t *pool)
{
  apr_hash_index_t *sectidx;
  apr_hash_index_t *optidx;

  *cfgp = 0;
  FUNC0(FUNC7(cfgp, FALSE, FALSE, pool));

  (*cfgp)->x_values = src->x_values;
  (*cfgp)->section_names_case_sensitive = src->section_names_case_sensitive;
  (*cfgp)->option_names_case_sensitive = src->option_names_case_sensitive;

  for (sectidx = FUNC1(pool, src->sections);
       sectidx != NULL;
       sectidx = FUNC2(sectidx))
  {
    const void *sectkey;
    void *sectval;
    apr_ssize_t sectkeyLength;
    cfg_section_t * srcsect;
    cfg_section_t * destsec;

    FUNC4(sectidx, &sectkey, &sectkeyLength, &sectval);
    srcsect = sectval;

    destsec = FUNC6(*cfgp, srcsect->name);

    for (optidx = FUNC1(pool, srcsect->options);
         optidx != NULL;
         optidx = FUNC2(optidx))
    {
      const void *optkey;
      void *optval;
      apr_ssize_t optkeyLength;
      cfg_option_t *srcopt;
      cfg_option_t *destopt;

      FUNC4(optidx, &optkey, &optkeyLength, &optval);
      srcopt = optval;

      FUNC8(&destopt, srcopt->name, srcopt->value,
                               (*cfgp)->option_names_case_sensitive,
                               pool);

      destopt->value = FUNC5(pool, srcopt->value);
      destopt->x_value = FUNC5(pool, srcopt->x_value);
      destopt->state = srcopt->state;
      FUNC3(destsec->options,
                   FUNC5(pool, (const char*)optkey),
                   optkeyLength, destopt);
    }
  }

  return SVN_NO_ERROR;
}