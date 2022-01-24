#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Table ;
struct TYPE_6__ {int extra; int /*<<< orphan*/  hash; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ TString ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLCF 132 
#define  LUA_TLIGHTUSERDATA 131 
#define  LUA_TLNGSTR 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSHRSTR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static Node *FUNC13 (const Table *t, const TValue *key) {
  switch (FUNC12(key)) {
    case LUA_TNUMBER:
      return FUNC5(t, FUNC9(key));
    case LUA_TLNGSTR: {
      TString *s = FUNC11(key);
      if (s->tsv.extra == 0) {  /* no hash? */
        s->tsv.hash = FUNC8(FUNC3(s), s->tsv.len, s->tsv.hash);
        s->tsv.extra = 1;  /* now it has its hash */
      }
      return FUNC7(t, FUNC11(key));
    }
    case LUA_TSHRSTR:
      return FUNC7(t, FUNC11(key));
    case LUA_TBOOLEAN:
      return FUNC4(t, FUNC0(key));
    case LUA_TLIGHTUSERDATA:
      return FUNC6(t, FUNC10(key));
    case LUA_TLCF:
      return FUNC6(t, FUNC1(key));
    default:
      return FUNC6(t, FUNC2(key));
  }
}