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
struct huffman_table_entry {int dummy; } ;
struct huffman_code {int maxlength; int minlength; int tablesize; struct huffman_table_entry* table; } ;
struct archive_read {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (struct archive_read*,struct huffman_code*,int /*<<< orphan*/ ,struct huffman_table_entry*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a, struct huffman_code *code)
{
  if (code->maxlength < code->minlength || code->maxlength > 10)
    code->tablesize = 10;
  else
    code->tablesize = code->maxlength;

  code->table =
    (struct huffman_table_entry *)FUNC0(1, sizeof(*code->table)
    * ((size_t)1 << code->tablesize));

  return FUNC1(a, code, 0, code->table, 0, code->tablesize);
}