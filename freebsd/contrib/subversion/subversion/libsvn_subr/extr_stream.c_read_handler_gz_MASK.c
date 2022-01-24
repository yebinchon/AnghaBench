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
typedef  int /*<<< orphan*/  z_stream ;
typedef  scalar_t__ uInt ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct zbaton {TYPE_1__* in; int /*<<< orphan*/  read_flush; void* read_buffer; int /*<<< orphan*/  substream; int /*<<< orphan*/  pool; } ;
typedef  scalar_t__ apr_size_t ;
struct TYPE_3__ {int avail_in; scalar_t__ avail_out; int /*<<< orphan*/  msg; void* next_in; int /*<<< orphan*/ * next_out; int /*<<< orphan*/  opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int ZBUFFER_SIZE ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton, char *buffer, apr_size_t *len)
{
  struct zbaton *btn = baton;
  int zerr;

  if (btn->in == NULL)
    {
      btn->in = FUNC1(btn->pool, sizeof(z_stream));
      btn->in->zalloc = zalloc;
      btn->in->zfree = zfree;
      btn->in->opaque = btn->pool;
      btn->read_buffer = FUNC1(btn->pool, ZBUFFER_SIZE);
      btn->in->next_in = btn->read_buffer;
      btn->in->avail_in = ZBUFFER_SIZE;

      FUNC0(FUNC4(btn->substream, btn->read_buffer,
                             &btn->in->avail_in, &btn->read_flush));

      zerr = FUNC3(btn->in);
      FUNC0(FUNC5(zerr, "inflateInit", btn->in->msg));
    }

  btn->in->next_out = (Bytef *) buffer;
  btn->in->avail_out = (uInt) *len;

  while (btn->in->avail_out > 0)
    {
      if (btn->in->avail_in <= 0)
        {
          btn->in->avail_in = ZBUFFER_SIZE;
          btn->in->next_in = btn->read_buffer;
          FUNC0(FUNC4(btn->substream, btn->read_buffer,
                                 &btn->in->avail_in, &btn->read_flush));
        }

      /* Short read means underlying stream has run out. */
      if (btn->in->avail_in == 0)
        {
          *len = 0;
          return SVN_NO_ERROR;
        }

      zerr = FUNC2(btn->in, btn->read_flush);
      if (zerr == Z_STREAM_END)
        break;
      else if (zerr != Z_OK)
        return FUNC6(FUNC5(zerr, "inflate",
                                                    btn->in->msg));
    }

  *len -= btn->in->avail_out;
  return SVN_NO_ERROR;
}