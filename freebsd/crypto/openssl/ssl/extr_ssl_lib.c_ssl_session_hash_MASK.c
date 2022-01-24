#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_storage ;
struct TYPE_3__ {unsigned char* session_id; int session_id_length; } ;
typedef  TYPE_1__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC2(const SSL_SESSION *a)
{
    const unsigned char *session_id = a->session_id;
    unsigned long l;
    unsigned char tmp_storage[4];

    if (a->session_id_length < sizeof(tmp_storage)) {
        FUNC1(tmp_storage, 0, sizeof(tmp_storage));
        FUNC0(tmp_storage, a->session_id, a->session_id_length);
        session_id = tmp_storage;
    }

    l = (unsigned long)
        ((unsigned long)session_id[0]) |
        ((unsigned long)session_id[1] << 8L) |
        ((unsigned long)session_id[2] << 16L) |
        ((unsigned long)session_id[3] << 24L);
    return l;
}