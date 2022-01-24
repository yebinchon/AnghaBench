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
typedef  int ossl_ssize_t ;
typedef  int /*<<< orphan*/  linktarget ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (char const**) ; 
 int PATH_MAX ; 
 int FUNC2 (int,unsigned int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int FUNC4 (char const*,char*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,scalar_t__) ; 
 int FUNC7 (char const*,char**,int) ; 
 char const** suffixes ; 

__attribute__((used)) static int FUNC8(const char *filename, const char *fullpath)
{
    unsigned int hash = 0;
    int i, type, id;
    unsigned char ch;
    char linktarget[PATH_MAX], *endptr;
    ossl_ssize_t n;

    for (i = 0; i < 8; i++) {
        ch = filename[i];
        if (!FUNC3(ch))
            return -1;
        hash <<= 4;
        hash += FUNC0(ch);
    }
    if (filename[i++] != '.')
        return -1;
    for (type = FUNC1(suffixes) - 1; type > 0; type--) {
        const char *suffix = suffixes[type];
        if (FUNC6(suffix, &filename[i], FUNC5(suffix)) == 0)
            break;
    }
    i += FUNC5(suffixes[type]);

    id = FUNC7(&filename[i], &endptr, 10);
    if (*endptr != '\0')
        return -1;

    n = FUNC4(fullpath, linktarget, sizeof(linktarget));
    if (n < 0 || n >= (int)sizeof(linktarget))
        return -1;
    linktarget[n] = 0;

    return FUNC2(type, hash, linktarget, NULL, 0, id);
}