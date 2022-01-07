; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_gcpio_compat.c_unpack_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_gcpio_compat.c_unpack_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"%s -i %s < %s >unpack.out 2>unpack.err\00", align 1
@testprog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error invoking %s -i %s < %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unpack.err\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"linkfile\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @unpack_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_test(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @assertMakeDir(i8* %8, i32 509)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @assertChdir(i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @extract_reference_file(i8* %12)
  %14 = load i32, i32* @testprog, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @systemf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @testprog, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21, i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @assertEqualInt(i32 %24, i32 0)
  %26 = call i64 (...) @canSymlink()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @testprog, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @assertTextFileContents(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %28, %3
  %38 = call i32 @assertIsReg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 420)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = call i32 @assertFileSize(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %42 = call i32 @assertFileSize(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = call i32 @assertFileNLinks(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = call i32 @assertIsHardlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @assertFileSize(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %50 = call i32 @assertFileSize(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %51 = call i64 (...) @canSymlink()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = call i32 @assertIsSymlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %55

55:                                               ; preds = %53, %37
  %56 = call i32 @assertIsDir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 509)
  %57 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @systemf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure(i8*, i8*, ...) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i64 @canSymlink(...) #1

declare dso_local i32 @assertTextFileContents(i8*, i8*) #1

declare dso_local i32 @assertIsReg(i8*, i32) #1

declare dso_local i32 @assertFileSize(i8*, i32) #1

declare dso_local i32 @assertFileNLinks(i8*, i32) #1

declare dso_local i32 @assertIsHardlink(i8*, i8*) #1

declare dso_local i32 @assertIsSymlink(i8*, i8*, i32) #1

declare dso_local i32 @assertIsDir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
