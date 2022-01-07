; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_verify_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/test/extr_test_basic.c_verify_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"linkfile\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @verify_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_files(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @failure(i8* %3)
  %5 = call i32 @assertIsReg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 420)
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @failure(i8* %6)
  %8 = call i32 @assertFileSize(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 10)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @failure(i8* %9)
  %11 = call i32 @assertFileNLinks(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @failure(i8* %12)
  %14 = call i32 @assertIsHardlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @canSymlink()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @assertIsSymlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @failure(i8* %20)
  %22 = call i32 @assertIsReg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @failure(i8* %23)
  %25 = call i32 @assertFileSize(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @failure(i8* %26)
  %28 = call i32 @assertFileNLinks(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %29 = call i32 @assertIsDir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 509)
  ret void
}

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertIsReg(i8*, i32) #1

declare dso_local i32 @assertFileSize(i8*, i32) #1

declare dso_local i32 @assertFileNLinks(i8*, i32) #1

declare dso_local i32 @assertIsHardlink(i8*, i8*) #1

declare dso_local i64 @canSymlink(...) #1

declare dso_local i32 @assertIsSymlink(i8*, i8*, i32) #1

declare dso_local i32 @assertIsDir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
