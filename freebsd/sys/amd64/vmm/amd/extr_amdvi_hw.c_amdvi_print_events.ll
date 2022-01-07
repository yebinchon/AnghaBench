; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_print_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_print_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i32, %struct.amdvi_event*, %struct.amdvi_ctrl* }
%struct.amdvi_event = type { i32 }
%struct.amdvi_ctrl = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"\09[Event%d: Head:0x%x Tail:0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*)* @amdvi_print_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_print_events(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.amdvi_ctrl*, align 8
  %4 = alloca %struct.amdvi_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %7 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %7, i32 0, i32 3
  %9 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %8, align 8
  store %struct.amdvi_ctrl* %9, %struct.amdvi_ctrl** %3, align 8
  store i32 4, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %17, i32 0, i32 2
  %19 = load %struct.amdvi_event*, %struct.amdvi_event** %18, align 8
  %20 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.amdvi_event, %struct.amdvi_event* %19, i64 %25
  store %struct.amdvi_event* %26, %struct.amdvi_event** %4, align 8
  %27 = load %struct.amdvi_event*, %struct.amdvi_event** %4, align 8
  %28 = getelementptr inbounds %struct.amdvi_event, %struct.amdvi_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %59

32:                                               ; preds = %16
  %33 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  %44 = load %struct.amdvi_event*, %struct.amdvi_event** %4, align 8
  %45 = call i32 @amdvi_decode_evt(%struct.amdvi_event* %44)
  %46 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @MOD_INC(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %10

59:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amdvi_decode_evt(%struct.amdvi_event*) #1

declare dso_local i32 @MOD_INC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
