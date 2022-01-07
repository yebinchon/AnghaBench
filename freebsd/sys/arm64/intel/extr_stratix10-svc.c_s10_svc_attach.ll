; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s10_svc_softc = type { i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s10_svc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_svc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.s10_svc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ofw_bus_get_node(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.s10_svc_softc* @device_get_softc(i32 %8)
  store %struct.s10_svc_softc* %9, %struct.s10_svc_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @device_get_unit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @s10_svc_get_callfn(%struct.s10_svc_softc* %19, i32 %20)
  %22 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %32 = call i64 @s10_get_memory(%struct.s10_svc_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %28, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.s10_svc_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32* @s10_svc_get_callfn(%struct.s10_svc_softc*, i32) #1

declare dso_local i64 @s10_get_memory(%struct.s10_svc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
