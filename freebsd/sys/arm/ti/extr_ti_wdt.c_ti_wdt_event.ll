; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_wdt_softc = type { i32 }

@WD_TO_NEVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmd 0x%x\0A\00", align 1
@WD_INTERVAL = common dso_local global i32 0, align 4
@WD_TO_1SEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"seconds %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"wldr 0x%x\0A\00", align 1
@TI_WDT_WLDR = common dso_local global i32 0, align 4
@TI_WDT_WTGR = common dso_local global i32 0, align 4
@TI_W_PEND_WTGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @ti_wdt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_wdt_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ti_wdt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ti_wdt_softc*
  store %struct.ti_wdt_softc* %12, %struct.ti_wdt_softc** %7, align 8
  %13 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %14 = call i32 @ti_wdt_disable(%struct.ti_wdt_softc* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @WD_TO_NEVER, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @WD_INTERVAL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WD_TO_1SEC, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %65

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WD_TO_1SEC, align 4
  %35 = sub i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 1, %40
  %42 = sdiv i32 32768, %41
  %43 = mul nsw i32 %39, %42
  %44 = sub i32 -1, %43
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %49 = load i32, i32* @TI_WDT_WLDR, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ti_wdt_reg_write(%struct.ti_wdt_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %53 = load i32, i32* @TI_WDT_WTGR, align 4
  %54 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %55 = load i32, i32* @TI_WDT_WTGR, align 4
  %56 = call i32 @ti_wdt_reg_read(%struct.ti_wdt_softc* %54, i32 %55)
  %57 = add nsw i32 %56, 1
  %58 = call i32 @ti_wdt_reg_write(%struct.ti_wdt_softc* %52, i32 %53, i32 %57)
  %59 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %60 = load i32, i32* @TI_W_PEND_WTGR, align 4
  %61 = call i32 @ti_wdt_reg_wait(%struct.ti_wdt_softc* %59, i32 %60)
  %62 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %7, align 8
  %63 = call i32 @ti_wdt_enable(%struct.ti_wdt_softc* %62)
  %64 = load i32*, i32** %6, align 8
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %32, %29, %18
  ret void
}

declare dso_local i32 @ti_wdt_disable(%struct.ti_wdt_softc*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @ti_wdt_reg_write(%struct.ti_wdt_softc*, i32, i32) #1

declare dso_local i32 @ti_wdt_reg_read(%struct.ti_wdt_softc*, i32) #1

declare dso_local i32 @ti_wdt_reg_wait(%struct.ti_wdt_softc*, i32) #1

declare dso_local i32 @ti_wdt_enable(%struct.ti_wdt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
