; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_init.c_try_drivers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_init.c_try_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_driver = type { %struct.ibv_driver* }
%struct.ibv_device = type { i32 }
%struct.ibv_sysfs_dev = type { i32 }

@head_driver = common dso_local global %struct.ibv_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_device* (%struct.ibv_sysfs_dev*)* @try_drivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_device* @try_drivers(%struct.ibv_sysfs_dev* %0) #0 {
  %2 = alloca %struct.ibv_device*, align 8
  %3 = alloca %struct.ibv_sysfs_dev*, align 8
  %4 = alloca %struct.ibv_driver*, align 8
  %5 = alloca %struct.ibv_device*, align 8
  store %struct.ibv_sysfs_dev* %0, %struct.ibv_sysfs_dev** %3, align 8
  %6 = load %struct.ibv_driver*, %struct.ibv_driver** @head_driver, align 8
  store %struct.ibv_driver* %6, %struct.ibv_driver** %4, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.ibv_driver*, %struct.ibv_driver** %4, align 8
  %9 = icmp ne %struct.ibv_driver* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.ibv_driver*, %struct.ibv_driver** %4, align 8
  %12 = load %struct.ibv_sysfs_dev*, %struct.ibv_sysfs_dev** %3, align 8
  %13 = call %struct.ibv_device* @try_driver(%struct.ibv_driver* %11, %struct.ibv_sysfs_dev* %12)
  store %struct.ibv_device* %13, %struct.ibv_device** %5, align 8
  %14 = load %struct.ibv_device*, %struct.ibv_device** %5, align 8
  %15 = icmp ne %struct.ibv_device* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.ibv_device*, %struct.ibv_device** %5, align 8
  store %struct.ibv_device* %17, %struct.ibv_device** %2, align 8
  br label %24

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ibv_driver*, %struct.ibv_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ibv_driver, %struct.ibv_driver* %20, i32 0, i32 0
  %22 = load %struct.ibv_driver*, %struct.ibv_driver** %21, align 8
  store %struct.ibv_driver* %22, %struct.ibv_driver** %4, align 8
  br label %7

23:                                               ; preds = %7
  store %struct.ibv_device* null, %struct.ibv_device** %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.ibv_device*, %struct.ibv_device** %2, align 8
  ret %struct.ibv_device* %25
}

declare dso_local %struct.ibv_device* @try_driver(%struct.ibv_driver*, %struct.ibv_sysfs_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
