; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_mem_filled.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_mem_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@TEST_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"MEM_ZERO\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%20s = %s%s (len %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(%s)[%zu]\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%20s = 0x%02x (expected 0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_mem_filled(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [64 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i64 -1, i64* %15, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %66

21:                                               ; preds = %7
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @TEST_NE, align 4
  %27 = call i32 @assert_ptr(i8* %22, i32 %23, i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i32* null, i32 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @memvalcmp(i8* %28, i32 %29, i64 %30, i64* %15)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @TEST_CHECK_INT(i32 %32, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @test_header(i8* %35, i32 %36, i8* %37, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @MIN(i64 %43, i32 20)
  %45 = call i8* @tohex(i8* %42, i32 %44)
  %46 = load i64, i64* %13, align 8
  %47 = icmp ugt i64 %46, 20
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %50 = load i64, i64* %13, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %45, i8* %49, i64 %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @snprintf(i8* %52, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %53, i64 %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %58 = load i8*, i8** %11, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %57, i32 %62, i32 %63)
  %65 = call i32 (...) @test_die()
  br label %66

66:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @assert_ptr(i8*, i32, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @memvalcmp(i8*, i32, i64, i64*) #1

declare dso_local i32 @TEST_CHECK_INT(i32, i32) #1

declare dso_local i32 @test_header(i8*, i32, i8*, i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @tohex(i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @test_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
