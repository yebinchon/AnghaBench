; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/utf8/extr_tests.c_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/utf8/extr_tests.c_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"utf8_\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"c_\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i32, i32, i8*)* @one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, -2
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i8*, i8** %14, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %20, %7
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %29 = call i32 @strlcpy(i8* %24, i8* %28, i32 16)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strlcat(i8* %30, i8* %31, i32 16)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %34 = call i32 @TEST_START(i8* %33)
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, -2
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %39

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32* [ null, %37 ], [ %11, %38 ]
  store i32* %40, i32** %16, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %42 = load i32*, i32** %16, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @snmprintf(i8* %41, i32 16, i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ASSERT_INT_EQ(i32 %45, i32 %46)
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @ASSERT_STRING_EQ(i8* %48, i8* %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ASSERT_INT_EQ(i32 %51, i32 %52)
  %54 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local i32 @snmprintf(i8*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @ASSERT_STRING_EQ(i8*, i8*) #1

declare dso_local i32 @TEST_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
