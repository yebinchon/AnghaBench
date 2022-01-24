#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_4__ {char* path; } ;
typedef  TYPE_1__ apr_uri_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char const* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC7(serf_bucket_t *response,
                      const char *base_url,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  serf_bucket_t *headers;
  const char *location;

  headers = FUNC3(response);
  location = FUNC2(headers, "Location");
  if (location == NULL)
    return NULL;

  /* The RFCs say we should have received a full url in LOCATION, but
     older apache versions and many custom web handlers just return a
     relative path here...

     And we can't trust anything because it is network data.
   */
  if (*location == '/')
    {
      apr_uri_t uri;
      apr_status_t status;

      status = FUNC0(scratch_pool, base_url, &uri);

      if (status != APR_SUCCESS)
        return NULL;

      /* Replace the path path with what we got */
      uri.path = (char*)FUNC6(location, scratch_pool);

      /* And make APR produce a proper full url for us */
      location = FUNC1(scratch_pool, &uri, 0);

      /* Fall through to ensure our canonicalization rules */
    }
  else if (!FUNC4(location))
    {
      return NULL; /* Any other formats we should support? */
    }

  return FUNC5(location, result_pool);
}