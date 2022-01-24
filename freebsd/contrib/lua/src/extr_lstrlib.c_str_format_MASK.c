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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  char const* LUAI_UACNUMBER ;
typedef  char const* LUAI_UACINT ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_INTEGER_FRMLEN ; 
 int /*<<< orphan*/  LUA_NUMBER_FRMLEN ; 
 char const L_ESC ; 
 int MAX_FORMAT ; 
 int MAX_ITEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,char const) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char) ; 
 size_t FUNC22 (char const*) ; 

__attribute__((used)) static int FUNC23 (lua_State *L) {
  int top = FUNC17(L);
  int arg = 1;
  size_t sfl;
  const char *strfrmt = FUNC10(L, arg, &sfl);
  const char *strfrmt_end = strfrmt+sfl;
  luaL_Buffer b;
  FUNC8(L, &b);
  while (strfrmt < strfrmt_end) {
    if (*strfrmt != L_ESC)
      FUNC3(&b, *strfrmt++);
    else if (*++strfrmt == L_ESC)
      FUNC3(&b, *strfrmt++);  /* %% */
    else { /* format item */
      char form[MAX_FORMAT];  /* to store the format ('%...') */
      char *buff = FUNC13(&b, MAX_ITEM);  /* to put formatted item */
      int nb = 0;  /* number of bytes in added item */
      if (++arg > top)
        FUNC7(L, arg, "no value");
      strfrmt = FUNC20(L, strfrmt, form);
      switch (*strfrmt++) {
        case 'c': {
          nb = FUNC2(buff, MAX_ITEM, form, (int)FUNC9(L, arg));
          break;
        }
        case 'd': case 'i':
        case 'o': case 'u': case 'x': case 'X': {
          lua_Integer n = FUNC9(L, arg);
          FUNC0(form, LUA_INTEGER_FRMLEN);
          nb = FUNC2(buff, MAX_ITEM, form, (LUAI_UACINT)n);
          break;
        }
        case 'a': case 'A':
          FUNC0(form, LUA_NUMBER_FRMLEN);
          nb = FUNC18(L, buff, MAX_ITEM, form,
                                  FUNC11(L, arg));
          break;
        case 'e': case 'E': case 'f':
        case 'g': case 'G': {
          lua_Number n = FUNC11(L, arg);
          FUNC0(form, LUA_NUMBER_FRMLEN);
          nb = FUNC2(buff, MAX_ITEM, form, (LUAI_UACNUMBER)n);
          break;
        }
        case 'q': {
          FUNC1(L, &b, arg);
          break;
        }
        case 's': {
          size_t l;
          const char *s = FUNC15(L, arg, &l);
          if (form[2] == '\0')  /* no modifiers? */
            FUNC5(&b);  /* keep entire string */
          else {
            FUNC6(L, l == FUNC22(s), arg, "string contains zeros");
            if (!FUNC21(form, '.') && l >= 100) {
              /* no precision and string is too long to be formatted */
              FUNC5(&b);  /* keep entire string */
            }
            else {  /* format the string into 'buff' */
              nb = FUNC2(buff, MAX_ITEM, form, s);
              FUNC19(L, 1);  /* remove result from 'luaL_tolstring' */
            }
          }
          break;
        }
        default: {  /* also treat cases 'pnLlh' */
          return FUNC12(L, "invalid option '%%%c' to 'format'",
                               *(strfrmt - 1));
        }
      }
      FUNC16(nb < MAX_ITEM);
      FUNC4(&b, nb);
    }
  }
  FUNC14(&b);
  return 1;
}