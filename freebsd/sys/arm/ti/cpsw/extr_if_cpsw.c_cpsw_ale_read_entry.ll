; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_read_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_read_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }

@CPSW_ALE_TBLCTL = common dso_local global i32 0, align 4
@CPSW_ALE_TBLW0 = common dso_local global i32 0, align 4
@CPSW_ALE_TBLW1 = common dso_local global i32 0, align 4
@CPSW_ALE_TBLW2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*, i32, i32*)* @cpsw_ale_read_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_ale_read_entry(%struct.cpsw_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cpsw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %8 = load i32, i32* @CPSW_ALE_TBLCTL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1023
  %11 = call i32 @cpsw_write_4(%struct.cpsw_softc* %7, i32 %8, i32 %10)
  %12 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %13 = load i32, i32* @CPSW_ALE_TBLW0, align 4
  %14 = call i32 @cpsw_read_4(%struct.cpsw_softc* %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %18 = load i32, i32* @CPSW_ALE_TBLW1, align 4
  %19 = call i32 @cpsw_read_4(%struct.cpsw_softc* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cpsw_softc*, %struct.cpsw_softc** %4, align 8
  %23 = load i32, i32* @CPSW_ALE_TBLW2, align 4
  %24 = call i32 @cpsw_read_4(%struct.cpsw_softc* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
