#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rar_br {int dummy; } ;
struct rar {scalar_t__ valid; struct rar_br br; } ;
struct huffman_code {int tablesize; TYPE_3__* tree; TYPE_2__* table; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct TYPE_6__ {int* branches; } ;
struct TYPE_5__ {int length; int value; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct archive_read*,struct huffman_code*) ; 
 void* FUNC2 (struct rar_br*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rar_br*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_read*,struct rar_br*,int) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, struct huffman_code *code)
{
  unsigned char bit;
  unsigned int bits;
  int length, value, node;
  struct rar *rar;
  struct rar_br *br;

  if (!code->table)
  {
    if (FUNC1(a, code) != (ARCHIVE_OK))
      return -1;
  }

  rar = (struct rar *)(a->format->data);
  br = &(rar->br);

  /* Look ahead (peek) at bits */
  if (!FUNC4(a, br, code->tablesize)) {
    FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Truncated RAR file data");
    rar->valid = 0;
    return -1;
  }
  bits = FUNC2(br, code->tablesize);

  length = code->table[bits].length;
  value = code->table[bits].value;

  if (length < 0)
  {
    FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Invalid prefix code in bitstream");
    return -1;
  }

  if (length <= code->tablesize)
  {
    /* Skip length bits */
    FUNC3(br, length);
    return value;
  }

  /* Skip tablesize bits */
  FUNC3(br, code->tablesize);

  node = value;
  while (!(code->tree[node].branches[0] ==
    code->tree[node].branches[1]))
  {
    if (!FUNC4(a, br, 1)) {
      FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                        "Truncated RAR file data");
      rar->valid = 0;
      return -1;
    }
    bit = FUNC2(br, 1);
    FUNC3(br, 1);

    if (code->tree[node].branches[bit] < 0)
    {
      FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                        "Invalid prefix code in bitstream");
      return -1;
    }
    node = code->tree[node].branches[bit];
  }

  return code->tree[node].branches[0];
}