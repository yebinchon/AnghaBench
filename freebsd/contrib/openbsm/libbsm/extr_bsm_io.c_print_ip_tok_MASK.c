#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  dest; int /*<<< orphan*/  src; int /*<<< orphan*/  chksm; int /*<<< orphan*/  prot; int /*<<< orphan*/  ttl; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; int /*<<< orphan*/  len; int /*<<< orphan*/  tos; int /*<<< orphan*/  version; } ;
struct TYPE_6__ {TYPE_1__ ip; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC8(fp, tok->id, "ip", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "version");
		FUNC7(fp, (u_char *)(&tok->tt.ip.version),
		    sizeof(u_char));
		FUNC0(fp);
		FUNC3(fp, "service_type");
		FUNC7(fp, (u_char *)(&tok->tt.ip.tos), sizeof(u_char));
		FUNC0(fp);
		FUNC3(fp, "len");
		FUNC4(fp, FUNC2(tok->tt.ip.len), "%u");
		FUNC0(fp);
		FUNC3(fp, "id");
		FUNC4(fp, FUNC2(tok->tt.ip.id), "%u");
		FUNC0(fp);
		FUNC3(fp, "offset");
		FUNC4(fp, FUNC2(tok->tt.ip.offset), "%u");
		FUNC0(fp);
		FUNC3(fp, "time_to_live");
		FUNC7(fp, (u_char *)(&tok->tt.ip.ttl), sizeof(u_char));
		FUNC0(fp);
		FUNC3(fp, "protocol");
		FUNC7(fp, (u_char *)(&tok->tt.ip.prot), sizeof(u_char));
		FUNC0(fp);
		FUNC3(fp, "cksum");
		FUNC4(fp, FUNC2(tok->tt.ip.chksm), "%u");
		FUNC0(fp);
		FUNC3(fp, "src_addr");
		FUNC6(fp, tok->tt.ip.src);
		FUNC0(fp);
		FUNC3(fp, "dest_addr");
		FUNC6(fp, tok->tt.ip.dest);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC7(fp, (u_char *)(&tok->tt.ip.version),
		    sizeof(u_char));
		FUNC5(fp, del);
		FUNC7(fp, (u_char *)(&tok->tt.ip.tos), sizeof(u_char));
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.ip.len), "%u");
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.ip.id), "%u");
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.ip.offset), "%u");
		FUNC5(fp, del);
		FUNC7(fp, (u_char *)(&tok->tt.ip.ttl), sizeof(u_char));
		FUNC5(fp, del);
		FUNC7(fp, (u_char *)(&tok->tt.ip.prot), sizeof(u_char));
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.ip.chksm), "%u");
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.ip.src);
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.ip.dest);
	}
}