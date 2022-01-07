; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"general test for a empty JSON objects/arrays\00", align 1
@test_simple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"general test for a simple JSON string\00", align 1
@test_primitive = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"test primitive JSON data types\00", align 1
@test_string = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"test string JSON data types\00", align 1
@test_partial_string = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"test partial JSON string parsing\00", align 1
@test_partial_array = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"test partial array reading\00", align 1
@test_array_nomem = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"test array reading with a smaller number of tokens\00", align 1
@test_unquoted_keys = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"test unquoted keys (like in JavaScript)\00", align 1
@test_objects_arrays = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"test objects and arrays\00", align 1
@test_unicode_characters = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"test unicode characters\00", align 1
@test_input_length = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"test strings that are not null-terminated\00", align 1
@test_issue_22 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"test issue #22\00", align 1
@test_count = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"test tokens count estimation\00", align 1
@test_nonstrict = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"test for non-strict mode\00", align 1
@test_keyvalue = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"test for keys/values\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"\0APASSED: %d\0AFAILED: %d\0A\00", align 1
@test_passed = common dso_local global i32 0, align 4
@test_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @test_empty, align 4
  %3 = call i32 @test(i32 %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @test_simple, align 4
  %5 = call i32 @test(i32 %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @test_primitive, align 4
  %7 = call i32 @test(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @test_string, align 4
  %9 = call i32 @test(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @test_partial_string, align 4
  %11 = call i32 @test(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @test_partial_array, align 4
  %13 = call i32 @test(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @test_array_nomem, align 4
  %15 = call i32 @test(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @test_unquoted_keys, align 4
  %17 = call i32 @test(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @test_objects_arrays, align 4
  %19 = call i32 @test(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @test_unicode_characters, align 4
  %21 = call i32 @test(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i32, i32* @test_input_length, align 4
  %23 = call i32 @test(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i32, i32* @test_issue_22, align 4
  %25 = call i32 @test(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i32, i32* @test_count, align 4
  %27 = call i32 @test(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %28 = load i32, i32* @test_nonstrict, align 4
  %29 = call i32 @test(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %30 = load i32, i32* @test_keyvalue, align 4
  %31 = call i32 @test(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %32 = load i32, i32* @test_passed, align 4
  %33 = load i32, i32* @test_failed, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @test(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
