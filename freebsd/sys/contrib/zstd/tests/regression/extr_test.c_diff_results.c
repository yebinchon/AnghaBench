
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ data_buffer_t ;


 int data_buffer_compare (TYPE_1__ const,TYPE_1__ const) ;
 int data_buffer_free (TYPE_1__ const) ;
 TYPE_1__ data_buffer_read (char const*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int diff_results(char const* actual_file, char const* expected_file) {
    data_buffer_t const actual = data_buffer_read(actual_file);
    data_buffer_t const expected = data_buffer_read(expected_file);
    int ret = 1;

    if (actual.data == ((void*)0)) {
        fprintf(stderr, "failed to open results '%s' for diff\n", actual_file);
        goto out;
    }
    if (expected.data == ((void*)0)) {
        fprintf(
            stderr,
            "failed to open previous results '%s' for diff\n",
            expected_file);
        goto out;
    }

    ret = data_buffer_compare(actual, expected);
    if (ret != 0) {
        fprintf(
            stderr,
            "actual results '%s' does not match expected results '%s'\n",
            actual_file,
            expected_file);
    } else {
        fprintf(stderr, "actual results match expected results\n");
    }
out:
    data_buffer_free(actual);
    data_buffer_free(expected);
    return ret;
}
