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
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const unsigned char *serverinfo,
                                     size_t serverinfo_length,
                                     unsigned int extension_type,
                                     const unsigned char **extension_data,
                                     size_t *extension_length)
{
    PACKET pkt, data;

    *extension_data = NULL;
    *extension_length = 0;
    if (serverinfo == NULL || serverinfo_length == 0)
        return -1;

    if (!FUNC0(&pkt, serverinfo, serverinfo_length))
        return -1;

    for (;;) {
        unsigned int type = 0;
        unsigned long context = 0;

        /* end of serverinfo */
        if (FUNC5(&pkt) == 0)
            return 0;           /* Extension not found */

        if (!FUNC4(&pkt, &context)
                || !FUNC3(&pkt, &type)
                || !FUNC2(&pkt, &data))
            return -1;

        if (type == extension_type) {
            *extension_data = FUNC1(&data);
            *extension_length = FUNC5(&data);;
            return 1;           /* Success */
        }
    }
    /* Unreachable */
}