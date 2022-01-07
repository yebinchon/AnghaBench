; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_al_serdes_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_al_serdes_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.al_serdes_softc = type { i32 }

@al_serdes_spec = common dso_local global i32 0, align 4
@alpine_serdes_eth_group_mode = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @al_serdes_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_serdes_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_serdes_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.al_serdes_softc* @device_get_softc(i32 %5)
  store %struct.al_serdes_softc* %6, %struct.al_serdes_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @al_serdes_spec, align 4
  %9 = load %struct.al_serdes_softc*, %struct.al_serdes_softc** %3, align 8
  %10 = getelementptr inbounds %struct.al_serdes_softc, %struct.al_serdes_softc* %9, i32 0, i32 0
  %11 = call i32 @bus_release_resources(i32 %7, i32 %8, i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alpine_serdes_eth_group_mode, align 8
  %15 = call i32 @nitems(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alpine_serdes_eth_group_mode, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @mtx_destroy(i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alpine_serdes_eth_group_mode, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %12

32:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.al_serdes_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
