; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_dev_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32 }
%struct.p2p_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_get_dev_addr(%struct.p2p_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.p2p_device* @p2p_get_device_interface(%struct.p2p_data* %9, i32* %10)
  store %struct.p2p_device* %11, %struct.p2p_device** %8, align 8
  %12 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %13 = icmp eq %struct.p2p_device* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %18 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @os_memcpy(i32* %16, i32 %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.p2p_device* @p2p_get_device_interface(%struct.p2p_data*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
