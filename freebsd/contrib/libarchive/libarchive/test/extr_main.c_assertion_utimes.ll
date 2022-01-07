; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_utimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_utimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Can't stat %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't utimes %s\0A\00", align 1
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_utimes(i8* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 8
  %18 = alloca [2 x %struct.timeval], align 16
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %19 = load i64, i64* %14, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %7
  %22 = load i64, i64* %15, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %87

31:                                               ; preds = %27, %24, %21, %7
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @lstat(i8* %32, %struct.stat* %17)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @failure_start(i8* %37, i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %8, align 4
  br label %87

42:                                               ; preds = %31
  %43 = load i64, i64* %14, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64, i64* %15, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %48, %45, %42
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %18, i64 0, i64 1
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 16
  %64 = load i64, i64* %15, align 8
  %65 = sdiv i64 %64, 1000
  %66 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %18, i64 0, i64 1
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %18, i64 0, i64 0
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 16
  %71 = load i64, i64* %13, align 8
  %72 = sdiv i64 %71, 1000
  %73 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %18, i64 0, i64 0
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %18, i64 0, i64 0
  %77 = call i32 @utimes(i8* %75, %struct.timeval* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %60
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @failure_start(i8* %81, i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  %85 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %8, align 4
  br label %87

86:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %80, %36, %30
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
