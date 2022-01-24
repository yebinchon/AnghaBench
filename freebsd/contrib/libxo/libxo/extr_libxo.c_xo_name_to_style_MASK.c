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
 int XO_STYLE_ENCODER ; 
 int XO_STYLE_HTML ; 
 int XO_STYLE_JSON ; 
 int XO_STYLE_SDPARAMS ; 
 int XO_STYLE_TEXT ; 
 int XO_STYLE_XML ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1 (const char *name)
{
    if (FUNC0(name, "xml"))
	return XO_STYLE_XML;
    else if (FUNC0(name, "json"))
	return XO_STYLE_JSON;
    else if (FUNC0(name, "encoder"))
	return XO_STYLE_ENCODER;
    else if (FUNC0(name, "text"))
	return XO_STYLE_TEXT;
    else if (FUNC0(name, "html"))
	return XO_STYLE_HTML;
    else if (FUNC0(name, "sdparams"))
	return XO_STYLE_SDPARAMS;

    return -1;
}