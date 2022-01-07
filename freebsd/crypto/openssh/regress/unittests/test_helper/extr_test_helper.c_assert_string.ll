; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_test_helper.c_assert_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@TEST_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%12s = %s (len %zu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_string(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* @TEST_NE, align 4
  %21 = call i32 @assert_ptr(i8* %16, i32 %17, i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i32* null, i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @TEST_NE, align 4
  %27 = call i32 @assert_ptr(i8* %22, i32 %23, i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i32* null, i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @strcmp(i8* %28, i8* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @TEST_CHECK_INT(i32 %31, i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @test_header(i8* %34, i32 %35, i8* %36, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42, i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48, i32 %50)
  %52 = call i32 (...) @test_die()
  ret void
}

declare dso_local i32 @assert_ptr(i8*, i32, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @TEST_CHECK_INT(i32, i32) #1

declare dso_local i32 @test_header(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @test_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
