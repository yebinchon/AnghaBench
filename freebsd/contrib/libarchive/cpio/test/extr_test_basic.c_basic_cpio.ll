; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_basic_cpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_basic_cpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"%s -R 1000:1000 -o %s < filelist >%s/archive 2>%s/pack.err\00", align 1
@testprog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error invoking %s -o %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected: %s, options=%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pack.err\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s -i %s< archive >unpack.out 2>unpack.err\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Error invoking %s -i %s\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error invoking %s -i %s in dir %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"unpack.err\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @basic_cpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_cpio(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @assertMakeDir(i8* %12, i32 509)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %57

16:                                               ; preds = %5
  %17 = load i32, i32* @testprog, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i32, i8*, ...) @systemf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i8* %19, i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @testprog, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i8*, i8*, i8*, ...) @failure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @assertEqualInt(i32 %27, i32 0)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @assertChdir(i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, i8*, i8*, ...) @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @assertTextFileContents(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @testprog, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i8*, i32, i8*, ...) @systemf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %36, i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @testprog, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8*, i8*, i8*, ...) @failure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @assertEqualInt(i32 %44, i32 0)
  %46 = load i32, i32* @testprog, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i8*, i8*, i8*, ...) @failure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %48, i8* %49, i8* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @assertTextFileContents(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @verify_files(i8* %54)
  %56 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %57

57:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @systemf(i8*, i32, i8*, ...) #1

declare dso_local i32 @failure(i8*, i8*, i8*, ...) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertTextFileContents(i8*, i8*) #1

declare dso_local i32 @verify_files(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
