; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_rstmgr_warmreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_rstmgr_warmreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rstmgr_softc = type { i32 }

@rstmgr_sc = common dso_local global %struct.rstmgr_softc* null, align 8
@CTRL_SWWARMRSTREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rstmgr_warmreset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rstmgr_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** @rstmgr_sc, align 8
  store %struct.rstmgr_softc* %5, %struct.rstmgr_softc** %4, align 8
  %6 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %4, align 8
  %7 = icmp eq %struct.rstmgr_softc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CTRL_SWWARMRSTREQ, align 4
  %13 = call i32 @WRITE4(%struct.rstmgr_softc* %10, i32 %11, i32 %12)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @WRITE4(%struct.rstmgr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
