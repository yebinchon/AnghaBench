; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_copy_client_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_copy_client_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.p2p_client_info = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_device*, %struct.p2p_client_info*)* @p2p_copy_client_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_copy_client_info(%struct.p2p_device* %0, %struct.p2p_client_info* %1) #0 {
  %3 = alloca %struct.p2p_device*, align 8
  %4 = alloca %struct.p2p_client_info*, align 8
  store %struct.p2p_device* %0, %struct.p2p_device** %3, align 8
  store %struct.p2p_client_info* %1, %struct.p2p_client_info** %4, align 8
  %5 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %6 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %13 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @p2p_copy_filter_devname(i32 %8, i32 4, i32 %11, i32 %14)
  %16 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %20 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %23 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %26 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %29 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %33 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @os_memcpy(i32 %31, i32 %34, i32 8)
  %36 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %37 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 8, %38
  %40 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %41 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %44 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.p2p_client_info*, %struct.p2p_client_info** %4, align 8
  %48 = getelementptr inbounds %struct.p2p_client_info, %struct.p2p_client_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %51 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @os_memcpy(i32 %46, i32 %49, i32 %53)
  ret void
}

declare dso_local i32 @p2p_copy_filter_devname(i32, i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
