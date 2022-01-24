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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  LUA_TBOOLEAN 134 
#define  LUA_TLCF 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TLNGSTR 131 
#define  LUA_TNUMFLT 130 
#define  LUA_TNUMINT 129 
#define  LUA_TSHRSTR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static Node *FUNC18 (const Table *t, const TValue *key) {
  switch (FUNC17(key)) {
    case LUA_TNUMINT:
      return FUNC5(t, FUNC10(key));
    case LUA_TNUMFLT:
      return FUNC6(t, FUNC11(FUNC1(key)));
    case LUA_TSHRSTR:
      return FUNC9(t, FUNC15(key));
    case LUA_TLNGSTR:
      return FUNC8(t, FUNC12(FUNC15(key)));
    case LUA_TBOOLEAN:
      return FUNC4(t, FUNC0(key));
    case LUA_TLIGHTUSERDATA:
      return FUNC7(t, FUNC14(key));
    case LUA_TLCF:
      return FUNC7(t, FUNC2(key));
    default:
      FUNC13(!FUNC16(key));
      return FUNC7(t, FUNC3(key));
  }
}