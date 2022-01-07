; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_empty_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_empty_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"Stat failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"File should be empty: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"    File size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"    Contents:\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"    Unable to open %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_empty_file(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @assertion_count(i8* %12, i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @failure_start(i8* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %68

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @failure_start(i8* %30, i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i8*, i8** %7, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  br label %66

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 1024, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i32 [ 1024, %50 ], [ %54, %51 ]
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @fread(i8* %57, i32 1, i32 %58, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @hexdump(i8* %61, i32* null, i32 %62, i32 0)
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @fclose(i32* %64)
  br label %66

66:                                               ; preds = %55, %43
  %67 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %28, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @hexdump(i8*, i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
