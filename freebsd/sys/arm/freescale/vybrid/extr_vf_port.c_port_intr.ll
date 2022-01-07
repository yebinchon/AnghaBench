; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_port.c_port_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_port.c_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_event = type { i32, i32, i32 (i32)* }
%struct.port_softc = type { i32 }

@NGPIO = common dso_local global i32 0, align 4
@PCR_ISF = common dso_local global i32 0, align 4
@event_map = common dso_local global %struct.port_event* null, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @port_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.port_event*, align 8
  %4 = alloca %struct.port_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.port_softc*
  store %struct.port_softc* %8, %struct.port_softc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NGPIO, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @PORT_PCR(i32 %15)
  %17 = call i32 @READ4(%struct.port_softc* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCR_ISF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %13
  %23 = load %struct.port_softc*, %struct.port_softc** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PORT_PCR(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WRITE4(%struct.port_softc* %23, i32 %25, i32 %26)
  %28 = load %struct.port_event*, %struct.port_event** @event_map, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.port_event, %struct.port_event* %28, i64 %30
  store %struct.port_event* %31, %struct.port_event** %3, align 8
  %32 = load %struct.port_event*, %struct.port_event** %3, align 8
  %33 = getelementptr inbounds %struct.port_event, %struct.port_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %50

36:                                               ; preds = %22
  %37 = load %struct.port_event*, %struct.port_event** %3, align 8
  %38 = getelementptr inbounds %struct.port_event, %struct.port_event* %37, i32 0, i32 2
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = icmp ne i32 (i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.port_event*, %struct.port_event** %3, align 8
  %43 = getelementptr inbounds %struct.port_event, %struct.port_event* %42, i32 0, i32 2
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.port_event*, %struct.port_event** %3, align 8
  %46 = getelementptr inbounds %struct.port_event, %struct.port_event* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %44(i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49, %22
  br label %51

51:                                               ; preds = %50, %13
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @READ4(%struct.port_softc*, i32) #1

declare dso_local i32 @PORT_PCR(i32) #1

declare dso_local i32 @WRITE4(%struct.port_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
