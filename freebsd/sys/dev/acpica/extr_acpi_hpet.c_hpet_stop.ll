; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64 }
%struct.hpet_timer = type { i64, i64*, i32, i32, i32, %struct.hpet_softc* }
%struct.hpet_softc = type { i32, %struct.hpet_timer* }

@curcpu = common dso_local global i64 0, align 8
@TIMER_STOPPED = common dso_local global i32 0, align 4
@HPET_TCNF_INT_ENB = common dso_local global i32 0, align 4
@HPET_TCNF_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*)* @hpet_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_stop(%struct.eventtimer* %0) #0 {
  %2 = alloca %struct.eventtimer*, align 8
  %3 = alloca %struct.hpet_timer*, align 8
  %4 = alloca %struct.hpet_timer*, align 8
  %5 = alloca %struct.hpet_softc*, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %2, align 8
  %6 = load %struct.eventtimer*, %struct.eventtimer** %2, align 8
  %7 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hpet_timer*
  store %struct.hpet_timer* %9, %struct.hpet_timer** %3, align 8
  %10 = load %struct.hpet_timer*, %struct.hpet_timer** %3, align 8
  %11 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %10, i32 0, i32 5
  %12 = load %struct.hpet_softc*, %struct.hpet_softc** %11, align 8
  store %struct.hpet_softc* %12, %struct.hpet_softc** %5, align 8
  %13 = load %struct.hpet_timer*, %struct.hpet_timer** %3, align 8
  %14 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.hpet_timer*, %struct.hpet_timer** %3, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.hpet_softc*, %struct.hpet_softc** %5, align 8
  %21 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %20, i32 0, i32 1
  %22 = load %struct.hpet_timer*, %struct.hpet_timer** %21, align 8
  %23 = load %struct.hpet_timer*, %struct.hpet_timer** %3, align 8
  %24 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @curcpu, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %22, i64 %28
  br label %30

30:                                               ; preds = %19, %17
  %31 = phi %struct.hpet_timer* [ %18, %17 ], [ %29, %19 ]
  store %struct.hpet_timer* %31, %struct.hpet_timer** %4, align 8
  %32 = load i32, i32* @TIMER_STOPPED, align 4
  %33 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %34 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @HPET_TCNF_INT_ENB, align 4
  %36 = load i32, i32* @HPET_TCNF_TYPE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %40 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.hpet_softc*, %struct.hpet_softc** %5, align 8
  %44 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %47 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HPET_TIMER_CAP_CNF(i32 %48)
  %50 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %51 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_write_4(i32 %45, i32 %49, i32 %52)
  ret i32 0
}

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @HPET_TIMER_CAP_CNF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
