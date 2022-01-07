; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_event_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_event_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i32, i32, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"EVT INTR %ld Status:0x%x EVT Head:0x%x Tail:0x%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"  [CMD Total 0x%lx] Tail:0x%x, Head:0x%x.\0A\00", align 1
@AMDVI_STATUS_EV_OF = common dso_local global i32 0, align 4
@AMDVI_STATUS_EV_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @amdvi_event_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_event_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca %struct.amdvi_ctrl*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.amdvi_softc*
  store %struct.amdvi_softc* %6, %struct.amdvi_softc** %3, align 8
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %7, i32 0, i32 3
  %9 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %8, align 8
  store %struct.amdvi_ctrl* %9, %struct.amdvi_ctrl** %4, align 8
  %10 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %21 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %38 = call i32 @amdvi_print_events(%struct.amdvi_softc* %37)
  %39 = load i32, i32* @AMDVI_STATUS_EV_OF, align 4
  %40 = load i32, i32* @AMDVI_STATUS_EV_INTR, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @amdvi_print_events(%struct.amdvi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
