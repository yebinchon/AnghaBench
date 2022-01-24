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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(const char *name, FILE *out) {
  FUNC0(out, "Usage: %s [--help] [-i|--in file] [-o|--out file]\n", name);
  FUNC0(out, "    [-s|--schema file] [-f|--format format]\n\n");
  FUNC0(out, "  --help   - print this message and exit\n");
  FUNC0(out, "  --in     - specify input filename "
          "(default: standard input)\n");
  FUNC0(out, "  --out    - specify output filename "
          "(default: standard output)\n");
  FUNC0(out, "  --schema - specify schema file for validation\n");
  FUNC0(out, "  --format - output format. Options: ucl (default), "
          "json, compact_json, yaml, msgpack\n");
}