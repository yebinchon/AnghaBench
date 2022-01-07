; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32 }

@UB_MAX_DEV = common dso_local global i32 0, align 4
@API_EINVAL = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.device_info* null, align 8
@API_DEV_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_dev_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @UB_MAX_DEV, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @API_EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %8
  %15 = load %struct.device_info*, %struct.device_info** @devices, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.device_info, %struct.device_info* %15, i64 %17
  store %struct.device_info* %18, %struct.device_info** %4, align 8
  %19 = load i32, i32* @API_DEV_OPEN, align 4
  %20 = load %struct.device_info*, %struct.device_info** %4, align 8
  %21 = call i32 @syscall(i32 %19, i32* %5, %struct.device_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %23, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @syscall(i32, i32*, %struct.device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
