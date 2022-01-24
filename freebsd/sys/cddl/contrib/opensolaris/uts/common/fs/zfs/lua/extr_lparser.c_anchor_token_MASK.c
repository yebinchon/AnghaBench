#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* ts; } ;
struct TYPE_11__ {scalar_t__ token; TYPE_2__ seminfo; } ;
struct TYPE_13__ {TYPE_3__ t; int /*<<< orphan*/ * fs; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
struct TYPE_12__ {TYPE_1__ tsv; } ;
typedef  TYPE_4__ TString ;
typedef  TYPE_5__ LexState ;

/* Variables and functions */
 scalar_t__ TK_EOS ; 
 scalar_t__ TK_NAME ; 
 scalar_t__ TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (LexState *ls) {
  /* last token from outer function must be EOS */
  FUNC2(ls->fs != NULL || ls->t.token == TK_EOS);
  if (ls->t.token == TK_NAME || ls->t.token == TK_STRING) {
    TString *ts = ls->t.seminfo.ts;
    FUNC1(ls, FUNC0(ts), ts->tsv.len);
  }
}