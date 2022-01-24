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

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(char * buf, size_t b_sz)
{
#if defined(HAVE_CANONICALIZE_FILE_NAME)
    {
        size_t name_len;

        char * pz = canonicalize_file_name(buf);
        if (pz == NULL)
            return false;

        name_len = strlen(pz);
        if (name_len >= (size_t)b_sz) {
            free(pz);
            return false;
        }

        memcpy(buf, pz, name_len + 1);
        free(pz);
    }

#elif defined(HAVE_REALPATH)
    {
        size_t name_len;
        char z[PATH_MAX+1];

        if (realpath(buf, z) == NULL)
            return false;

        name_len = strlen(z);
        if (name_len >= b_sz)
            return false;

        memcpy(buf, z, name_len + 1);
    }
#endif
    return true;
}