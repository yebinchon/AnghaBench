; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dev_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32 }

@API_ENODEV = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.device_info* null, align 8
@API_DEV_WRITE = common dso_local global i32 0, align 4
@API_ESYSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_dev_send(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dev_net_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @API_ENODEV, align 4
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.device_info*, %struct.device_info** @devices, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.device_info, %struct.device_info* %16, i64 %18
  store %struct.device_info* %19, %struct.device_info** %8, align 8
  %20 = load i32, i32* @API_DEV_WRITE, align 4
  %21 = load %struct.device_info*, %struct.device_info** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @syscall(i32 %20, i32* %9, %struct.device_info* %21, i8* %22, i32* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @API_ESYSC, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @dev_net_valid(i32) #1

declare dso_local i32 @syscall(i32, i32*, %struct.device_info*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
