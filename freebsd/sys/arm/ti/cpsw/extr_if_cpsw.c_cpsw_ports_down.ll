; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ports_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ports_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpswp_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*)* @cpsw_ports_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ports_down(%struct.cpsw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_softc*, align 8
  %4 = alloca %struct.cpswp_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %3, align 8
  %7 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cpswp_softc* @device_get_softc(i32 %18)
  store %struct.cpswp_softc* %19, %struct.cpswp_softc** %4, align 8
  %20 = load %struct.cpswp_softc*, %struct.cpswp_softc** %4, align 8
  %21 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %20, i32 0, i32 0
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %5, align 8
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cpswp_softc* @device_get_softc(i32 %28)
  store %struct.cpswp_softc* %29, %struct.cpswp_softc** %4, align 8
  %30 = load %struct.cpswp_softc*, %struct.cpswp_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %30, i32 0, i32 0
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  store %struct.ifnet* %32, %struct.ifnet** %6, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_UP, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %12
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %48

47:                                               ; preds = %39, %12
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.cpswp_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
