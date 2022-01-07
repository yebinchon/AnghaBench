; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_passthrough.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"%s -p %s <filelist >%s/stdout 2>%s/stderr\00", align 1
@testprog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error invoking %s -p\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error invoking %s -p in dir %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1 block\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"passthrough\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @passthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passthrough(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @assertMakeDir(i8* %4, i32 509)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @testprog, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @systemf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %10, i8* %11, i8* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @testprog, align 4
  %15 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @assertEqualInt(i32 %16, i32 0)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @assertChdir(i8* %18)
  %20 = load i32, i32* @testprog, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, i32, ...) @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %20, i8* %21)
  %23 = call i32 @assertTextFileContents(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @verify_files(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %26

26:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @systemf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @failure(i8*, i32, ...) #1

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
