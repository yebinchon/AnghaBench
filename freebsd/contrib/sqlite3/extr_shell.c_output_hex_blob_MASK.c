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

__attribute__((used)) static void FUNC1(FILE *out, const void *pBlob, int nBlob){
  int i;
  char *zBlob = (char *)pBlob;
  FUNC0(out,"X'");
  for(i=0; i<nBlob; i++){ FUNC0(out,"%02x",zBlob[i]&0xff); }
  FUNC0(out,"'");
}