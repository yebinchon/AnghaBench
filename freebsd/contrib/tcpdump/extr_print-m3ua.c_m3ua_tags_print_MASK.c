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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct m3ua_param_header {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int const) ; 
 int /*<<< orphan*/  ParamName ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                const u_char *buf, const u_int size)
{
  const u_char *p = buf;
  int align;
  uint16_t hdr_tag;
  uint16_t hdr_len;

  while (p < buf + size) {
    if (p + sizeof(struct m3ua_param_header) > buf + size)
      goto invalid;
    FUNC2(*p, sizeof(struct m3ua_param_header));
    /* Parameter Tag */
    hdr_tag = FUNC0(p);
    FUNC1((ndo, "\n\t\t\t%s: ", FUNC4(ParamName, "Unknown Parameter (0x%04x)", hdr_tag)));
    /* Parameter Length */
    hdr_len = FUNC0(p + 2);
    if (hdr_len < sizeof(struct m3ua_param_header))
      goto invalid;
    /* Parameter Value */
    align = (p + hdr_len - buf) % 4;
    align = align ? 4 - align : 0;
    FUNC2(*p, hdr_len + align);
    FUNC3(ndo, p, hdr_tag, hdr_len - sizeof(struct m3ua_param_header));
    p += hdr_len + align;
  }
  return;

invalid:
  FUNC1((ndo, "%s", istr));
  FUNC2(*buf, size);
  return;
trunc:
  FUNC1((ndo, "%s", tstr));
}