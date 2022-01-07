
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blocks {int max; char const* data; int flags; TYPE_1__* slots; } ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int pos; scalar_t__ adlersum; } ;


 int MATCH_BLOCKSIZE ;
 int NO_POSITION ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int add_block (struct blocks*,int ,int) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int init_adler32 (char const*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
init_blocks_table(const char *data,
                  apr_size_t datalen,
                  struct blocks *blocks,
                  apr_pool_t *pool)
{
  apr_size_t nblocks;
  apr_size_t wnslots = 1;
  apr_uint32_t nslots;
  apr_uint32_t i;


  nblocks = datalen / MATCH_BLOCKSIZE + 1;

  while (wnslots <= nblocks)
    wnslots *= 2;

  wnslots *= 2;
  nslots = (apr_uint32_t) wnslots;
  SVN_ERR_ASSERT_NO_RETURN(wnslots == nslots);
  blocks->max = nslots - 1;
  blocks->data = data;
  blocks->slots = apr_palloc(pool, nslots * sizeof(*(blocks->slots)));
  for (i = 0; i < nslots; ++i)
    {

      blocks->slots[i].adlersum = 0;
      blocks->slots[i].pos = NO_POSITION;
    }


  memset(blocks->flags, 0, sizeof(blocks->flags));




  for (i = 0; i + MATCH_BLOCKSIZE <= datalen; i += MATCH_BLOCKSIZE)
    add_block(blocks, init_adler32(data + i), i);
}
