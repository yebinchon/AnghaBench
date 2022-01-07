
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int) ;
 int test (int ,char*) ;
 int test_array_nomem ;
 int test_count ;
 int test_empty ;
 int test_failed ;
 int test_input_length ;
 int test_issue_22 ;
 int test_keyvalue ;
 int test_nonstrict ;
 int test_objects_arrays ;
 int test_partial_array ;
 int test_partial_string ;
 int test_passed ;
 int test_primitive ;
 int test_simple ;
 int test_string ;
 int test_unicode_characters ;
 int test_unquoted_keys ;

int main() {
 test(test_empty, "general test for a empty JSON objects/arrays");
 test(test_simple, "general test for a simple JSON string");
 test(test_primitive, "test primitive JSON data types");
 test(test_string, "test string JSON data types");
 test(test_partial_string, "test partial JSON string parsing");
 test(test_partial_array, "test partial array reading");
 test(test_array_nomem, "test array reading with a smaller number of tokens");
 test(test_unquoted_keys, "test unquoted keys (like in JavaScript)");
 test(test_objects_arrays, "test objects and arrays");
 test(test_unicode_characters, "test unicode characters");
 test(test_input_length, "test strings that are not null-terminated");
 test(test_issue_22, "test issue #22");
 test(test_count, "test tokens count estimation");
 test(test_nonstrict, "test for non-strict mode");
 test(test_keyvalue, "test for keys/values");
 printf("\nPASSED: %d\nFAILED: %d\n", test_passed, test_failed);
 return 0;
}
