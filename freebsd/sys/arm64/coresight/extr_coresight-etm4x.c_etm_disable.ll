; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-etm4x.c_etm_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-etm4x.c_etm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { i32 }
%struct.etm_softc = type { i32 }

@TRCPRGCTLR = common dso_local global i32 0, align 4
@TRCSTATR = common dso_local global i32 0, align 4
@TRCSTATR_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.endpoint*, %struct.coresight_event*)* @etm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm_disable(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
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
  %11 = load %struct.etm_softc*, %struct.etm_softc** %7, align 8
  %12 = getelementptr inbounds %struct.etm_softc, %struct.etm_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TRCPRGCTLR, align 4
  %15 = call i32 @bus_write_4(i32 %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %22, %3
  %17 = load %struct.etm_softc*, %struct.etm_softc** %7, align 8
  %18 = getelementptr inbounds %struct.etm_softc, %struct.etm_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRCSTATR, align 4
  %21 = call i32 @bus_read_4(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @TRCSTATR_IDLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %16, label %27

27:                                               ; preds = %22
  ret void
}

declare dso_local %struct.etm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
