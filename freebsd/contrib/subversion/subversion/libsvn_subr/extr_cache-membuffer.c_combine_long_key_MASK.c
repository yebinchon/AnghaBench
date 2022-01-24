#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int key_len; int /*<<< orphan*/ * fingerprint; } ;
struct TYPE_7__ {int key_len; int /*<<< orphan*/ * fingerprint; } ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_1__ entry_key; TYPE_5__ full_key; } ;
struct TYPE_10__ {TYPE_3__ prefix; TYPE_2__ combined_key; } ;
typedef  TYPE_4__ svn_membuffer_cache_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  scalar_t__ apr_ssize_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 

__attribute__((used)) static void
FUNC6(svn_membuffer_cache_t *cache,
                 const void *key,
                 apr_ssize_t key_len)
{
  apr_uint32_t *digest_buffer;
  char *key_copy;
  apr_size_t prefix_len = cache->prefix.key_len;
  apr_size_t aligned_key_len;

  /* handle variable-length keys */
  if (key_len == APR_HASH_KEY_STRING)
    key_len = FUNC3((const char *) key);

  aligned_key_len = FUNC0(key_len);

  /* Combine keys. */
  FUNC5(&cache->combined_key.full_key,
                     aligned_key_len + prefix_len);

  key_copy = (char *)cache->combined_key.full_key.data + prefix_len;
  cache->combined_key.entry_key.key_len = aligned_key_len + prefix_len;
  FUNC1(key_copy, key, key_len);
  FUNC2(key_copy + key_len, 0, aligned_key_len - key_len);

  /* Hash key into 16 bytes. */
  digest_buffer = (apr_uint32_t *)cache->combined_key.entry_key.fingerprint;
  FUNC4(digest_buffer, key, key_len);

  /* Combine with prefix. */
  cache->combined_key.entry_key.fingerprint[0]
    ^= cache->prefix.fingerprint[0];
  cache->combined_key.entry_key.fingerprint[1]
    ^= cache->prefix.fingerprint[1];
}