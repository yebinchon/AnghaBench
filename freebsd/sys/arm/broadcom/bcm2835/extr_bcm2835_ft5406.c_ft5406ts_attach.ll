; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_ft5406.c_ft5406ts_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft5406ts_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ft5406ts_softc*, i32 }

@ft5406ts_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"config_intrhook_establish failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ft5406ts_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft5406ts_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ft5406ts_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ft5406ts_softc* @device_get_softc(i32 %5)
  store %struct.ft5406ts_softc* %6, %struct.ft5406ts_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @ft5406ts_init, align 4
  %11 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %15 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ft5406ts_softc* %14, %struct.ft5406ts_softc** %17, align 8
  %18 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %19 = call i32 @FT5406_LOCK_INIT(%struct.ft5406ts_softc* %18)
  %20 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ft5406ts_softc, %struct.ft5406ts_softc* %20, i32 0, i32 0
  %22 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ft5406ts_softc*, %struct.ft5406ts_softc** %4, align 8
  %28 = call i32 @FT5406_LOCK_DESTROY(%struct.ft5406ts_softc* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.ft5406ts_softc* @device_get_softc(i32) #1

declare dso_local i32 @FT5406_LOCK_INIT(%struct.ft5406ts_softc*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @FT5406_LOCK_DESTROY(%struct.ft5406ts_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
