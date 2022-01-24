#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_stringbuf_t *
FUNC4(const char *propname,
                          const svn_string_t *original,
                          const svn_string_t *mine,
                          const svn_string_t *incoming,
                          const svn_string_t *incoming_base,
                          apr_pool_t *result_pool)
{
  if (incoming_base == NULL)
    {
      /* Attempting to add the value INCOMING.  */
      FUNC0(incoming != NULL);

      if (mine)
        {
          /* To have a conflict, these must be different.  */
          FUNC0(!FUNC2(mine, incoming));

          /* Note that we don't care whether MINE is locally-added or
             edited, or just something different that is a copy of the
             pristine ORIGINAL.  */
          return FUNC3(result_pool,
                                       FUNC1("Trying to add new property '%s'\n"
                                         "but the property already exists.\n"),
                                       propname);
        }

      /* To have a conflict, we must have an ORIGINAL which has been
         locally-deleted.  */
      FUNC0(original != NULL);
      return FUNC3(result_pool,
                                   FUNC1("Trying to add new property '%s'\n"
                                     "but the property has been locally "
                                     "deleted.\n"),
                                   propname);
    }

  if (incoming == NULL)
    {
      /* Attempting to delete the value INCOMING_BASE.  */
      FUNC0(incoming_base != NULL);

      /* Are we trying to delete a local addition? */
      if (original == NULL && mine != NULL)
        return FUNC3(result_pool,
                                     FUNC1("Trying to delete property '%s'\n"
                                       "but the property has been locally "
                                       "added.\n"),
                                     propname);

      /* A conflict can only occur if we originally had the property;
         otherwise, we would have merged the property-delete into the
         non-existent property.  */
      FUNC0(original != NULL);

      if (FUNC2(original, incoming_base))
        {
          if (mine)
            /* We were trying to delete the correct property, but an edit
               caused the conflict.  */
            return FUNC3(result_pool,
                                         FUNC1("Trying to delete property '%s'\n"
                                           "but the property has been locally "
                                           "modified.\n"),
                                         propname);
        }
      else if (mine == NULL)
        {
          /* We were trying to delete the property, but we have locally
             deleted the same property, but with a different value. */
          return FUNC3(result_pool,
                                       FUNC1("Trying to delete property '%s'\n"
                                         "but the property has been locally "
                                         "deleted and had a different "
                                         "value.\n"),
                                       propname);
        }

      /* We were trying to delete INCOMING_BASE but our ORIGINAL is
         something else entirely.  */
      FUNC0(!FUNC2(original, incoming_base));

      return FUNC3(result_pool,
                                   FUNC1("Trying to delete property '%s'\n"
                                     "but the local property value is "
                                     "different.\n"),
                                   propname);
    }

  /* Attempting to change the property from INCOMING_BASE to INCOMING.  */

  /* If we have a (current) property value, then it should be different
     from the INCOMING_BASE; otherwise, the incoming change would have
     been applied to it.  */
  FUNC0(!mine || !FUNC2(mine, incoming_base));

  if (original && mine && FUNC2(original, mine))
    {
      /* We have an unchanged property, so the original values must
         have been different.  */
      FUNC0(!FUNC2(original, incoming_base));
      return FUNC3(result_pool,
                                   FUNC1("Trying to change property '%s'\n"
                                     "but the local property value conflicts "
                                     "with the incoming change.\n"),
                                   propname);
    }

  if (original && mine)
    return FUNC3(result_pool,
                                 FUNC1("Trying to change property '%s'\n"
                                   "but the property has already been locally "
                                   "changed to a different value.\n"),
                                 propname);

  if (original)
    return FUNC3(result_pool,
                                 FUNC1("Trying to change property '%s'\nbut "
                                   "the property has been locally deleted.\n"),
                                 propname);

  if (mine)
    return FUNC3(result_pool,
                                 FUNC1("Trying to change property '%s'\nbut the "
                                   "property has been locally added with a "
                                   "different value.\n"),
                                 propname);

  return FUNC3(result_pool,
                               FUNC1("Trying to change property '%s'\nbut "
                                 "the property does not exist locally.\n"),
                               propname);
}