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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_MAX_KEYWORDLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char const*,scalar_t__) ; 

ssize_t
FUNC5(sldns_buffer *b, const char *keyword, const char *k_del, char
*data, const char *d_del, size_t data_limit)
{
       /* we assume: keyword|sep|data */
       char *fkeyword;
       ssize_t i;

       if(FUNC3(keyword) >= LDNS_MAX_KEYWORDLEN)
               return -1;
       fkeyword = (char*)FUNC1(LDNS_MAX_KEYWORDLEN);
       if(!fkeyword)
               return -1; /* out of memory */

       i = FUNC2(b, fkeyword, k_del, data_limit);
       if(i==0 || i==-1) {
               FUNC0(fkeyword);
               return -1; /* nothing read */
       }

       /* case??? */
       if (FUNC4(fkeyword, keyword, FUNC3(keyword)) == 0) {
               FUNC0(fkeyword);
               /* whee, the match! */
               /* retrieve it's data */
               i = FUNC2(b, data, d_del, 0);
               return i;
       } else {
               FUNC0(fkeyword);
               return -1;
       }
}