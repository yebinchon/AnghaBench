; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_absolute_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_absolute_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%.4s-%.2s-%.2s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%Y-%m-%dT%H:%M\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%.4s-%.2s-%.2sT%.2s:%.2s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%.4s-%.2s-%.2sT%.2s:%.2s:%.2s\00", align 1
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_absolute_time(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.tm, align 4
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  switch i32 %12, label %47 [
    i32 8, label %13
    i32 12, label %21
    i32 14, label %33
  ]

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  %20 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %17, i8* %19)
  br label %49

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 6
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 10
  %32 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %22, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %25, i8* %27, i8* %29, i8* %31)
  br label %49

33:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 10
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  %46 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %34, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %35, i8* %37, i8* %39, i8* %41, i8* %43, i8* %45)
  br label %49

47:                                               ; preds = %2
  %48 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %33, %21, %13
  %50 = call i32 @memset(%struct.tm* %6, i32 0, i32 4)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %52 = load i8*, i8** %9, align 8
  %53 = call i32* @strptime(i8* %51, i8* %52, %struct.tm* %6)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %49
  %58 = call i64 @mktime(%struct.tm* %6)
  store i64 %58, i64* %7, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = load i64*, i64** %5, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %60, %55, %47
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
