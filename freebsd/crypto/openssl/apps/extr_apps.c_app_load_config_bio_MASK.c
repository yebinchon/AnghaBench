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
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC4 () ; 

CONF *FUNC5(BIO *in, const char *filename)
{
    long errorline = -1;
    CONF *conf;
    int i;

    conf = FUNC3(NULL);
    i = FUNC2(conf, in, &errorline);
    if (i > 0)
        return conf;

    if (errorline <= 0) {
        FUNC0(bio_err, "%s: Can't load ", FUNC4());
    } else {
        FUNC0(bio_err, "%s: Error on line %ld of ", FUNC4(),
                   errorline);
    }
    if (filename != NULL)
        FUNC0(bio_err, "config file \"%s\"\n", filename);
    else
        FUNC0(bio_err, "config input");

    FUNC1(conf);
    return NULL;
}