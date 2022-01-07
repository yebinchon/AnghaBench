; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_rtc.c_mv_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_rtc.c_mv_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_rtc_softc = type { i32, i32 }

@res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_rtc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mv_rtc_softc* @device_get_softc(i32 %5)
  store %struct.mv_rtc_softc* %6, %struct.mv_rtc_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @clock_register(i32 %10, i32 1000000)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @res_spec, align 4
  %14 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.mv_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
