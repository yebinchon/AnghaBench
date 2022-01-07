; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i32** }

@ha_softc = common dso_local global %struct.ha_softc zeroinitializer, align 8
@CTL_HA_CHAN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Wrong CTL HA channel %d\00", align 1
@CTL_HA_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_ha_msg_deregister(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ha_softc*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.ha_softc* @ha_softc, %struct.ha_softc** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @CTL_HA_CHAN_MAX, align 8
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = load %struct.ha_softc*, %struct.ha_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @CTL_HA_STATUS_SUCCESS, align 4
  ret i32 %16
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
