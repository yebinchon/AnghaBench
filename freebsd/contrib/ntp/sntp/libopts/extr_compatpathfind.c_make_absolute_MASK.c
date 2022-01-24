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
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4( char const * string, char const * dot_path )
{
    char * result;
    int result_len;

    if (!dot_path || *string == '/') {
        result = FUNC2( string );
	if (result == NULL) {
	return NULL;    /* couldn't allocate memory    */
	}
    } else {
        if (dot_path && dot_path[0]) {
            result = FUNC0( 2 + FUNC3( dot_path ) + FUNC3( string ) );
		if (result == NULL) {
		return NULL;    /* couldn't allocate memory    */
		}		
            FUNC1( result, dot_path );
            result_len = (int)FUNC3(result);
            if (result[result_len - 1] != '/') {
                result[result_len++] = '/';
                result[result_len] = '\0';
            }
        } else {
            result = FUNC0( 3 + FUNC3( string ) );
		if (result == NULL) {
		return NULL;    /* couldn't allocate memory    */
		}
            result[0] = '.'; result[1] = '/'; result[2] = '\0';
            result_len = 2;
        }

        FUNC1( result + result_len, string );
    }

    return result;
}