#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ capacity; scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ data_buffer_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ const UTIL_FILESIZE_UNKNOWN ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

data_buffer_t FUNC8(char const* filename) {
    data_buffer_t buffer = {};

    uint64_t const size = FUNC0(filename);
    if (size == UTIL_FILESIZE_UNKNOWN) {
        FUNC3(stderr, "unknown size for %s\n", filename);
        return buffer;
    }

    buffer.data = (uint8_t*)FUNC6(size);
    if (buffer.data == NULL) {
        FUNC3(stderr, "malloc failed\n");
        return buffer;
    }
    buffer.capacity = size;

    FILE* file = FUNC2(filename, "rb");
    if (file == NULL) {
        FUNC3(stderr, "file null\n");
        goto err;
    }
    buffer.size = FUNC4(buffer.data, 1, buffer.capacity, file);
    FUNC1(file);
    if (buffer.size != buffer.capacity) {
        FUNC3(stderr, "read %zu != %zu\n", buffer.size, buffer.capacity);
        goto err;
    }

    return buffer;
err:
    FUNC5(buffer.data);
    FUNC7(&buffer, 0, sizeof(buffer));
    return buffer;
}