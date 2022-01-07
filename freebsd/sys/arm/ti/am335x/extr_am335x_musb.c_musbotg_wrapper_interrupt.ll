; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_wrapper_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_musb.c_musbotg_wrapper_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { i32, %struct.musbotg_super_softc* }
%struct.musbotg_super_softc = type { i32 }

@USBCTRL_STAT = common dso_local global i32 0, align 4
@USBCTRL_IRQ_STAT0 = common dso_local global i32 0, align 4
@USBCTRL_IRQ_STAT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"port%d: stat0=%08x stat1=%08x, stat=%08x\0A\00", align 1
@IRQ_STAT1_DRVVBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @musbotg_wrapper_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_wrapper_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.musbotg_softc*, align 8
  %4 = alloca %struct.musbotg_super_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.musbotg_softc*
  store %struct.musbotg_softc* %9, %struct.musbotg_softc** %3, align 8
  %10 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %10, i32 0, i32 1
  %12 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %11, align 8
  store %struct.musbotg_super_softc* %12, %struct.musbotg_super_softc** %4, align 8
  %13 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %14 = load i32, i32* @USBCTRL_STAT, align 4
  %15 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %17 = load i32, i32* @USBCTRL_IRQ_STAT0, align 4
  %18 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %20 = load i32, i32* @USBCTRL_IRQ_STAT1, align 4
  %21 = call i32 @USBCTRL_READ4(%struct.musbotg_super_softc* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %26 = load i32, i32* @USBCTRL_IRQ_STAT0, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.musbotg_super_softc*, %struct.musbotg_super_softc** %4, align 8
  %34 = load i32, i32* @USBCTRL_IRQ_STAT1, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %39 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IRQ_STAT1_DRVVBUS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 1
  %53 = call i32 @musbotg_vbus_interrupt(%struct.musbotg_softc* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i8*, i8** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 65535
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @musbotg_interrupt(i8* %55, i32 %58, i32 %60, i32 %62)
  ret void
}

declare dso_local i32 @USBCTRL_READ4(%struct.musbotg_super_softc*, i32) #1

declare dso_local i32 @USBCTRL_WRITE4(%struct.musbotg_super_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @musbotg_vbus_interrupt(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_interrupt(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
