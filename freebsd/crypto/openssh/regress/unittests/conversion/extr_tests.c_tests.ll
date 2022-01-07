; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/conversion/extr_tests.c_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/conversion/extr_tests.c_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"conversion_convtime\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"1S\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"90m\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"1h30m\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"2d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"1w\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-7\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-9d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@LONG_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"%lluM\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"1000000000000000000000w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = call i32 @TEST_START(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @convtime(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @ASSERT_LONG_EQ(i32 %3, i32 0)
  %5 = call i32 @convtime(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @ASSERT_LONG_EQ(i32 %5, i32 1)
  %7 = call i32 @convtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @ASSERT_LONG_EQ(i32 %7, i32 1)
  %9 = call i32 @convtime(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @ASSERT_LONG_EQ(i32 %9, i32 5400)
  %11 = call i32 @convtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @ASSERT_LONG_EQ(i32 %11, i32 5400)
  %13 = call i32 @convtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @ASSERT_LONG_EQ(i32 %13, i32 172800)
  %15 = call i32 @convtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @ASSERT_LONG_EQ(i32 %15, i32 604800)
  %17 = call i32 @convtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @ASSERT_LONG_EQ(i32 %17, i32 -1)
  %19 = call i32 @convtime(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %20 = call i32 @ASSERT_LONG_EQ(i32 %19, i32 -1)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %22 = load i64, i64* @LONG_MAX, align 8
  %23 = add i64 %22, 1
  %24 = call i32 @snprintf(i8* %21, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %23)
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %26 = call i32 @convtime(i8* %25)
  %27 = call i32 @ASSERT_LONG_EQ(i32 %26, i32 -1)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %29 = load i64, i64* @LONG_MAX, align 8
  %30 = udiv i64 %29, 60
  %31 = add i64 %30, 1
  %32 = call i32 @snprintf(i8* %28, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %34 = call i32 @convtime(i8* %33)
  %35 = call i32 @ASSERT_LONG_EQ(i32 %34, i32 -1)
  %36 = call i32 @convtime(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %37 = call i32 @ASSERT_LONG_EQ(i32 %36, i32 -1)
  %38 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local i32 @ASSERT_LONG_EQ(i32, i32) #1

declare dso_local i32 @convtime(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @TEST_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
