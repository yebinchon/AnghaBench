; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_freopen_test.c_runtest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_freopen_test.c_runtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"fopen(\22%s\22, \22%s\22) failed; errno=%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"freopen(\22%s\22, \22%s\22, fopen(\22%s\22, \22%s\22)) succeeded unexpectedly\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"freopen(\22%s\22, \22%s\22, fopen(\22%s\22, \22%s\22)) failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32)* @runtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runtest(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  br label %19

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %18 ]
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @fopen(i8* %21, i8* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @ATF_REQUIRE_MSG(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28, i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32* @freopen(i8* %33, i8* %34, i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %19
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @ATF_REQUIRE_MSG(i32 %42, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44, i8* %45, i8* %46)
  br label %60

48:                                               ; preds = %19
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @ATF_REQUIRE_MSG(i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %53, i8* %54, i8* %55, i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32* @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
