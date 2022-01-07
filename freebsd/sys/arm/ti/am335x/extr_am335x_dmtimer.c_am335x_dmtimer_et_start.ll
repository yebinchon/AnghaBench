; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64, %struct.am335x_dmtimer_softc* }
%struct.am335x_dmtimer_softc = type { i32 }

@DMT_TCLR_START = common dso_local global i32 0, align 4
@DMT_TCLR_AUTOLOAD = common dso_local global i32 0, align 4
@DMT_TCLR = common dso_local global i32 0, align 4
@DMT_IRQSTATUS = common dso_local global i32 0, align 4
@DMT_IRQ_OVF = common dso_local global i32 0, align 4
@DMT_TLDR = common dso_local global i32 0, align 4
@DMT_TCRR = common dso_local global i32 0, align 4
@DMT_IRQENABLE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @am335x_dmtimer_et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_dmtimer_et_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.am335x_dmtimer_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %11 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %10, i32 0, i32 1
  %12 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %11, align 8
  store %struct.am335x_dmtimer_softc* %12, %struct.am335x_dmtimer_softc** %7, align 8
  %13 = load i32, i32* @DMT_TCLR_START, align 4
  %14 = load i32, i32* @DMT_TCLR_AUTOLOAD, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %18 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %22 = load i32, i32* @DMT_TCLR, align 4
  %23 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %24 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %21, i32 %22, i32 %25)
  %27 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %28 = load i32, i32* @DMT_IRQSTATUS, align 4
  %29 = load i32, i32* @DMT_IRQ_OVF, align 4
  %30 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %35 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = ashr i32 %39, 32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @DMT_TCLR_AUTOLOAD, align 4
  %42 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %43 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %52 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = ashr i32 %56, 32
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %62 = load i32, i32* @DMT_TLDR, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 -1, %63
  %65 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %61, i32 %62, i32 %64)
  %66 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %67 = load i32, i32* @DMT_TCRR, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub i32 -1, %68
  %70 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %66, i32 %67, i32 %69)
  %71 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %72 = load i32, i32* @DMT_IRQENABLE_SET, align 4
  %73 = load i32, i32* @DMT_IRQ_OVF, align 4
  %74 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @DMT_TCLR_START, align 4
  %76 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %77 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %81 = load i32, i32* @DMT_TCLR, align 4
  %82 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %7, align 8
  %83 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %80, i32 %81, i32 %84)
  ret i32 0
}

declare dso_local i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
