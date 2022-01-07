; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_basic.c_run_tar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_basic.c_run_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%s cf - %s %s >%s/archive 2>%s/pack.err\00", align 1
@testprog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error invoking %s cf -\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pack.err\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s xf archive %s >unpack.out 2>unpack.err\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error invoking %s xf archive %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"unpack.err\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @run_tar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tar(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @assertMakeDir(i8* %10, i32 509)
  %12 = load i32, i32* @testprog, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i32, i8*, ...) @systemf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13, i8* %14, i8* %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @testprog, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @assertEqualInt(i32 %21, i32 0)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @assertChdir(i8* %23)
  %25 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @testprog, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i32, i8*, ...) @systemf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %26, i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @testprog, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %29, i8* %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @assertEqualInt(i32 %32, i32 0)
  %34 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @systemf(i8*, i32, i8*, ...) #1

declare dso_local i32 @failure(i8*, i32, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertEmptyFile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
