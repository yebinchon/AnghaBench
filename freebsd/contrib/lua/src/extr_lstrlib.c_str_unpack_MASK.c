#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  size_t lua_Integer ;
struct TYPE_6__ {int /*<<< orphan*/  n; int /*<<< orphan*/  d; int /*<<< orphan*/  f; int /*<<< orphan*/  buff; } ;
struct TYPE_5__ {int /*<<< orphan*/  islittle; } ;
typedef  int KOption ;
typedef  TYPE_1__ Header ;
typedef  TYPE_2__ Ftypes ;

/* Variables and functions */
#define  Kchar 136 
#define  Kfloat 135 
#define  Kint 134 
#define  Knop 133 
#define  Kpaddalign 132 
#define  Kpadding 131 
#define  Kstring 130 
#define  Kuint 129 
#define  Kzstr 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,size_t,char const**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC13 (char const*) ; 
 size_t FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC15 (lua_State *L) {
  Header h;
  const char *fmt = FUNC7(L, 1);
  size_t ld;
  const char *data = FUNC5(L, 2, &ld);
  size_t pos = (size_t)FUNC12(FUNC8(L, 3, 1), ld) - 1;
  int n = 0;  /* number of results */
  FUNC3(L, pos <= ld, 3, "initial position out of string");
  FUNC2(L, &h);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = FUNC1(&h, pos, &fmt, &size, &ntoalign);
    if ((size_t)ntoalign + size > ~pos || pos + ntoalign + size > ld)
      FUNC4(L, 2, "data string too short");
    pos += ntoalign;  /* skip alignment */
    /* stack space for item + next position */
    FUNC6(L, 2, "too many results");
    n++;
    switch (opt) {
      case Kint:
      case Kuint: {
        lua_Integer res = FUNC14(L, data + pos, h.islittle, size,
                                       (opt == Kint));
        FUNC9(L, res);
        break;
      }
      case Kfloat: {
        volatile Ftypes u;
        lua_Number num;
        FUNC0(u.buff, data + pos, size, h.islittle);
#if LUA_FLOAT_TYPE != LUA_FLOAT_INT64
        if (size == sizeof(u.f)) num = (lua_Number)u.f;
        else if (size == sizeof(u.d)) num = (lua_Number)u.d;
        else num = u.n;
#else
	num = u.n;
#endif
        FUNC11(L, num);
        break;
      }
      case Kchar: {
        FUNC10(L, data + pos, size);
        break;
      }
      case Kstring: {
        size_t len = (size_t)FUNC14(L, data + pos, h.islittle, size, 0);
        FUNC3(L, pos + len + size <= ld, 2, "data string too short");
        FUNC10(L, data + pos + size, len);
        pos += len;  /* skip string */
        break;
      }
      case Kzstr: {
        size_t len = (int)FUNC13(data + pos);
        FUNC10(L, data + pos, len);
        pos += len + 1;  /* skip string plus final '\0' */
        break;
      }
      case Kpaddalign: case Kpadding: case Knop:
        n--;  /* undo increment */
        break;
    }
    pos += size;
  }
  FUNC9(L, pos + 1);  /* next position */
  return n + 1;
}