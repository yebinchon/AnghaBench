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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LDNS_MAX_KEYWORDLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*,size_t,int*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char const*,scalar_t__) ; 

ssize_t
FUNC6(FILE *f, const char *keyword, const char *k_del, char *data,
               const char *d_del, size_t data_limit, int *line_nr)
{
       /* we assume: keyword|sep|data */
       char *fkeyword;
       ssize_t i;

       if(FUNC4(keyword) >= LDNS_MAX_KEYWORDLEN)
               return -1;
       fkeyword = (char*)FUNC1(LDNS_MAX_KEYWORDLEN);
       if(!fkeyword)
               return -1;

       i = FUNC2(f, fkeyword, k_del, LDNS_MAX_KEYWORDLEN);
       if(i==0 || i==-1) {
               FUNC0(fkeyword);
               return -1;
       }

       /* case??? i instead of strlen? */
       if (FUNC5(fkeyword, keyword, LDNS_MAX_KEYWORDLEN - 1) == 0) {
               /* whee! */
               /* printf("%s\n%s\n", "Matching keyword", fkeyword); */
               i = FUNC3(f, data, d_del, data_limit, line_nr);
               FUNC0(fkeyword);
               return i;
       } else {
               /*printf("no match for %s (read: %s)\n", keyword, fkeyword);*/
               FUNC0(fkeyword);
               return -1;
       }
}