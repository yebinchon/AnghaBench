; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_print_disk_probe_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_print_disk_probe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@currdev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@D_SLICENONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@D_SLICEWILD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<auto>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@D_PARTNONE = common dso_local global i64 0, align 8
@D_PARTWILD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"  Checking unit=%d slice=%s partition=%s...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_disk_probe_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_disk_probe_info() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 0), align 8
  %4 = load i64, i64* @D_SLICENONE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %8 = call i32 @strlcpy(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 32)
  br label %21

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 0), align 8
  %11 = load i64, i64* @D_SLICEWILD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strlcpy(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 32)
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 0), align 8
  %19 = call i32 @snprintf(i8* %17, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %20, %6
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 1), align 8
  %23 = load i64, i64* @D_PARTNONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %27 = call i32 @strlcpy(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 32)
  br label %40

28:                                               ; preds = %21
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 1), align 8
  %30 = load i64, i64* @D_PARTWILD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %34 = call i32 @strlcpy(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 32)
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 1, i32 1), align 8
  %38 = call i32 @snprintf(i8* %36, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @currdev, i32 0, i32 0, i32 0), align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %44 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %42, i8* %43)
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
