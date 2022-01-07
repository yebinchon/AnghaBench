; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@TEST_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%12s = %s (len %zu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_mem(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load i64, i64* %15, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %64

21:                                               ; preds = %8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @TEST_NE, align 4
  %27 = call i32 @assert_ptr(i8* %22, i32 %23, i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i32* null, i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* @TEST_NE, align 4
  %33 = call i32 @assert_ptr(i8* %28, i32 %29, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31, i32* null, i32 %32)
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call i32 @memcmp(i8* %34, i8* %35, i64 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @TEST_CHECK_INT(i32 %38, i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @test_header(i8* %41, i32 %42, i8* %43, i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @MIN(i64 %50, i32 256)
  %52 = call i8* @tohex(i8* %49, i32 %51)
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %52, i64 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @MIN(i64 %58, i32 256)
  %60 = call i8* @tohex(i8* %57, i32 %59)
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %60, i64 %61)
  %63 = call i32 (...) @test_die()
  br label %64

64:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @assert_ptr(i8*, i32, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @TEST_CHECK_INT(i32, i32) #1

declare dso_local i32 @test_header(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i64) #1

declare dso_local i8* @tohex(i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @test_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
