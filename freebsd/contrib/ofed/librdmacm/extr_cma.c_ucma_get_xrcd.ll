; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_get_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_get_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_xrcd = type { i32 }
%struct.cma_device = type { %struct.ibv_xrcd*, i32 }
%struct.ibv_xrcd_init_attr = type { i32, i32, i32 }

@mut = common dso_local global i32 0, align 4
@IBV_XRCD_INIT_ATTR_FD = common dso_local global i32 0, align 4
@IBV_XRCD_INIT_ATTR_OFLAGS = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_xrcd* (%struct.cma_device*)* @ucma_get_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_xrcd* @ucma_get_xrcd(%struct.cma_device* %0) #0 {
  %2 = alloca %struct.cma_device*, align 8
  %3 = alloca %struct.ibv_xrcd_init_attr, align 4
  store %struct.cma_device* %0, %struct.cma_device** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @mut)
  %5 = load %struct.cma_device*, %struct.cma_device** %2, align 8
  %6 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %5, i32 0, i32 0
  %7 = load %struct.ibv_xrcd*, %struct.ibv_xrcd** %6, align 8
  %8 = icmp ne %struct.ibv_xrcd* %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = call i32 @memset(%struct.ibv_xrcd_init_attr* %3, i32 0, i32 12)
  %11 = load i32, i32* @IBV_XRCD_INIT_ATTR_FD, align 4
  %12 = load i32, i32* @IBV_XRCD_INIT_ATTR_OFLAGS, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %3, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.cma_device*, %struct.cma_device** %2, align 8
  %19 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ibv_xrcd* @ibv_open_xrcd(i32 %20, %struct.ibv_xrcd_init_attr* %3)
  %22 = load %struct.cma_device*, %struct.cma_device** %2, align 8
  %23 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %22, i32 0, i32 0
  store %struct.ibv_xrcd* %21, %struct.ibv_xrcd** %23, align 8
  br label %24

24:                                               ; preds = %9, %1
  %25 = call i32 @pthread_mutex_unlock(i32* @mut)
  %26 = load %struct.cma_device*, %struct.cma_device** %2, align 8
  %27 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %26, i32 0, i32 0
  %28 = load %struct.ibv_xrcd*, %struct.ibv_xrcd** %27, align 8
  ret %struct.ibv_xrcd* %28
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.ibv_xrcd_init_attr*, i32, i32) #1

declare dso_local %struct.ibv_xrcd* @ibv_open_xrcd(i32, %struct.ibv_xrcd_init_attr*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
