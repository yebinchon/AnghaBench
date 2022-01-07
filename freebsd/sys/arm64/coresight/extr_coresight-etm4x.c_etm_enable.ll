; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-etm4x.c_etm_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-etm4x.c_etm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { i32 }
%struct.etm_softc = type { i32 }

@TRCPRGCTLR = common dso_local global i32 0, align 4
@TRCPRGCTLR_EN = common dso_local global i32 0, align 4
@TRCSTATR = common dso_local global i32 0, align 4
@TRCSTATR_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"etm is not enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.endpoint*, %struct.coresight_event*)* @etm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_enable(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.endpoint*, align 8
  %6 = alloca %struct.coresight_event*, align 8
  %7 = alloca %struct.etm_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.endpoint* %1, %struct.endpoint** %5, align 8
  store %struct.coresight_event* %2, %struct.coresight_event** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.etm_softc* @device_get_softc(i32 %9)
  store %struct.etm_softc* %10, %struct.etm_softc** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %13 = call i32 @etm_prepare(i32 %11, %struct.coresight_event* %12)
  %14 = load %struct.etm_softc*, %struct.etm_softc** %7, align 8
  %15 = getelementptr inbounds %struct.etm_softc, %struct.etm_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRCPRGCTLR, align 4
  %18 = load i32, i32* @TRCPRGCTLR_EN, align 4
  %19 = call i32 @bus_write_4(i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %26, %3
  %21 = load %struct.etm_softc*, %struct.etm_softc** %7, align 8
  %22 = getelementptr inbounds %struct.etm_softc, %struct.etm_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TRCSTATR, align 4
  %25 = call i32 @bus_read_4(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TRCSTATR_IDLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %20, label %31

31:                                               ; preds = %26
  %32 = load %struct.etm_softc*, %struct.etm_softc** %7, align 8
  %33 = getelementptr inbounds %struct.etm_softc, %struct.etm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TRCPRGCTLR, align 4
  %36 = call i32 @bus_read_4(i32 %34, i32 %35)
  %37 = load i32, i32* @TRCPRGCTLR_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  ret i32 0
}

declare dso_local %struct.etm_softc* @device_get_softc(i32) #1

declare dso_local i32 @etm_prepare(i32, %struct.coresight_event*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
