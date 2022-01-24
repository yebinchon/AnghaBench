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
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char**) ; 

__attribute__((used)) static int
FUNC6(char id, char *cp, char *chapSecret, unsigned char *digest)
{
     SHA1_CTX	ctx;
     char	*tmp;
     int	len;

     FUNC3(3);

     FUNC1(&ctx);
     
     FUNC2(&ctx, &id, 1);

     if((len = FUNC5(chapSecret, &tmp)) == 0) {
	  // print error
	  return -1;
     }
     FUNC2(&ctx, tmp, len);
     FUNC4(tmp);

     if((len = FUNC5(cp, &tmp)) == 0) {
	  // print error
	  return -1;
     }
     FUNC2(&ctx, tmp, len);
     FUNC4(tmp);

     FUNC0(digest, &ctx);

     return 0;
    
}