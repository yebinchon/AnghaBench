; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_status_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_status_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_DDB_CAPTURE_BUFOFF = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sysctl: %s\00", align 1
@SYSCTL_DDB_CAPTURE_BUFSIZE = common dso_local global i32 0, align 4
@SYSCTL_DDB_CAPTURE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%u/%u bytes used\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"capture is on\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"capture is off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ddb_capture_status_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_capture_status_sysctl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 4, i64* %4, align 8
  %5 = load i32, i32* @SYSCTL_DDB_CAPTURE_BUFOFF, align 4
  %6 = call i64 @sysctlbyname(i32 %5, i32* %1, i64* %4, i32* null, i32 0)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @EX_OSERR, align 4
  %10 = load i32, i32* @SYSCTL_DDB_CAPTURE_BUFOFF, align 4
  %11 = call i32 @err(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  store i64 4, i64* %4, align 8
  %13 = load i32, i32* @SYSCTL_DDB_CAPTURE_BUFSIZE, align 4
  %14 = call i64 @sysctlbyname(i32 %13, i32* %2, i64* %4, i32* null, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @EX_OSERR, align 4
  %18 = load i32, i32* @SYSCTL_DDB_CAPTURE_BUFSIZE, align 4
  %19 = call i32 @err(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  store i64 4, i64* %4, align 8
  %21 = load i32, i32* @SYSCTL_DDB_CAPTURE_INPROGRESS, align 4
  %22 = call i64 @sysctlbyname(i32 %21, i32* %3, i64* %4, i32* null, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @EX_OSERR, align 4
  %26 = load i32, i32* @SYSCTL_DDB_CAPTURE_INPROGRESS, align 4
  %27 = call i32 @err(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  ret void
}

declare dso_local i64 @sysctlbyname(i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
