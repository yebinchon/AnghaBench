
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {int size; int shift; scalar_t__* offsets; int * last_matches; int * prefixes; scalar_t__ used; int pool; } ;
typedef TYPE_2__ hash_t ;
typedef int hash_key_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_size_t ;


 scalar_t__ NO_OFFSET ;
 int allocate_hash_members (TYPE_2__*,int,int ) ;
 int hash_key (scalar_t__) ;
 size_t hash_to_index (TYPE_2__*,int ) ;

__attribute__((used)) static void
grow_hash(hash_t *hash,
          svn_stringbuf_t *text,
          apr_size_t min_size)
{
  hash_t copy;
  apr_size_t i;


  apr_size_t new_size = hash->size * 2;
  apr_size_t new_shift = hash->shift - 1;
  while (new_size < min_size)
    {
      new_size *= 2;
      --new_shift;
    }


  allocate_hash_members(&copy, new_size, hash->pool);
  copy.used = 0;
  copy.shift = new_shift;


  for (i = 0; i < hash->size; ++i)
    {
      apr_uint32_t offset = hash->offsets[i];
      if (offset != NO_OFFSET)
        {
          hash_key_t key = hash_key(text->data + offset);
          size_t idx = hash_to_index(&copy, key);

          if (copy.offsets[idx] == NO_OFFSET)
            copy.used++;

          copy.prefixes[idx] = hash->prefixes[i];
          copy.offsets[idx] = offset;
          copy.last_matches[idx] = hash->last_matches[i];
        }
    }

  *hash = copy;
}
