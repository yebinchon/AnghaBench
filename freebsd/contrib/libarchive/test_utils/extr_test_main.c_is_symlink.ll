; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_is_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_is_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Symlink should exist: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't read symlink %s\00", align 1
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_FLAG_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FSCTL_GET_REPARSE_POINT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_SYMLINK = common dso_local global i64 0, align 8
@MAXIMUM_REPARSE_DATA_BUFFER_SIZE = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i32)* @is_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_symlink(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [300 x i8], align 16
  %13 = alloca %struct.stat, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @assertion_count(i8* %17, i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @lstat(i8* %20, %struct.stat* %13)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @failure_start(i8* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %6, align 4
  br label %61

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISLNK(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %61

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %61

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %43 = call i64 @readlink(i8* %41, i8* %42, i32 300)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @failure_start(i8* %47, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %6, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %61

60:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %59, %46, %39, %35, %24
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
