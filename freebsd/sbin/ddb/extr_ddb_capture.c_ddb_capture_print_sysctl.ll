; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_print_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_print_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_DDB_CAPTURE_DATA = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sysctl: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ddb_capture_print_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_capture_print_sysctl() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %46, %0
  %6 = load i32, i32* @SYSCTL_DDB_CAPTURE_DATA, align 4
  %7 = call i32 @sysctlbyname(i32 %6, i8* null, i64* %1, i32* null, i32 0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @EX_OSERR, align 4
  %11 = load i32, i32* @SYSCTL_DDB_CAPTURE_DATA, align 4
  %12 = call i32 (i32, i8*, ...) @err(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %54

17:                                               ; preds = %13
  %18 = load i64, i64* %1, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EX_OSERR, align 4
  %24 = call i32 (i32, i8*, ...) @err(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @bzero(i8* %26, i64 %27)
  %29 = load i64, i64* %1, align 8
  store i64 %29, i64* %2, align 8
  %30 = load i32, i32* @SYSCTL_DDB_CAPTURE_DATA, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @sysctlbyname(i32 %30, i8* %31, i64* %2, i32* null, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @EX_OSERR, align 4
  %41 = load i32, i32* @SYSCTL_DDB_CAPTURE_DATA, align 4
  %42 = call i32 (i32, i8*, ...) @err(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35, %25
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @free(i8* %47)
  br label %5

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @free(i8* %52)
  br label %54

54:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @sysctlbyname(i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
