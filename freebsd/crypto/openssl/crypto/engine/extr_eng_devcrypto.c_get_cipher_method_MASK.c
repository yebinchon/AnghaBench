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
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  const** known_cipher_methods ; 

__attribute__((used)) static const EVP_CIPHER *FUNC1(int nid)
{
    size_t i = FUNC0(nid);

    if (i == (size_t)-1)
        return NULL;
    return known_cipher_methods[i];
}