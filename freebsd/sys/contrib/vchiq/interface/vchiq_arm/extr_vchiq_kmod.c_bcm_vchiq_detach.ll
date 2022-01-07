; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_kmod.c_bcm_vchiq_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_kmod.c_bcm_vchiq_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_vchiq_softc = type { i32, i32, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_vchiq_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_vchiq_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_vchiq_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.bcm_vchiq_softc* @device_get_softc(i32 %4)
  store %struct.bcm_vchiq_softc* %5, %struct.bcm_vchiq_softc** %3, align 8
  %6 = call i32 (...) @vchiq_exit()
  %7 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @bus_teardown_intr(i32 %12, i32 %15, i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SYS_RES_IRQ, align 4
  %23 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_release_resource(i32 %21, i32 %22, i32 0, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_MEMORY, align 4
  %29 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 0, i32 %31)
  %33 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_destroy(i32* %34)
  ret i32 0
}

declare dso_local %struct.bcm_vchiq_softc* @device_get_softc(i32) #1

declare dso_local i32 @vchiq_exit(...) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
