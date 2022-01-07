; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@arm_gic_spec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_gic_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_gic_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.arm_gic_softc* @device_get_softc(i32 %4)
  store %struct.arm_gic_softc* %5, %struct.arm_gic_softc** %3, align 8
  %6 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %3, align 8
  %7 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %3, align 8
  %12 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = call i32 @free(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @arm_gic_spec, align 4
  %19 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %3, align 8
  %20 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bus_release_resources(i32 %17, i32 %18, i32 %21)
  ret i32 0
}

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
