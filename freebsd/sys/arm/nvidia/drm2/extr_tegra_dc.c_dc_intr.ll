; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DC_CMD_INT_STATUS = common dso_local global i32 0, align 4
@VBLANK_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dc_softc*
  store %struct.dc_softc* %6, %struct.dc_softc** %3, align 8
  %7 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %8 = load i32, i32* @DC_CMD_INT_STATUS, align 4
  %9 = call i32 @RD4(%struct.dc_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = load i32, i32* @DC_CMD_INT_STATUS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @WR4(%struct.dc_softc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VBLANK_INT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drm_handle_vblank(i32 %23, i32 %27)
  %29 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %30 = call i32 @dc_finish_page_flip(%struct.dc_softc* %29)
  br label %31

31:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @RD4(%struct.dc_softc*, i32) #1

declare dso_local i32 @WR4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @dc_finish_page_flip(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
