; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.netif = type { i32 }
%struct.device_info = type { i64 }

@devs_no = common dso_local global i32 0, align 4
@DEV_TYP_NET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"net_probe: no network devices found, maybe not enumerated yet..?\0A\00", align 1
@uboot_softc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*, i8*)* @net_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_probe(%struct.netif* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_info*, align 8
  %7 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @devs_no, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.device_info* @ub_dev_get(i32 %13)
  store %struct.device_info* %14, %struct.device_info** %6, align 8
  %15 = icmp ne %struct.device_info* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.device_info*, %struct.device_info** %6, align 8
  %18 = getelementptr inbounds %struct.device_info, %struct.device_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEV_TYP_NET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %22, %8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @devs_no, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uboot_softc, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.device_info* @ub_dev_get(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
