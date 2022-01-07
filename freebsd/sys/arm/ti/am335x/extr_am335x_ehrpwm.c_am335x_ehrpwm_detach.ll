; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_ehrpwm_softc = type { i64, i32, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_ehrpwm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_ehrpwm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_ehrpwm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.am335x_ehrpwm_softc* @device_get_softc(i32 %6)
  store %struct.am335x_ehrpwm_softc* %7, %struct.am335x_ehrpwm_softc** %4, align 8
  %8 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_generic_detach(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %17 = call i32 @PWM_LOCK(%struct.am335x_ehrpwm_softc* %16)
  %18 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %19 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @device_delete_child(i32 %23, i32* %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %37 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %45 = call i32 @PWM_UNLOCK(%struct.am335x_ehrpwm_softc* %44)
  %46 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %47 = call i32 @PWM_LOCK_DESTROY(%struct.am335x_ehrpwm_softc* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.am335x_ehrpwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @PWM_LOCK(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @PWM_UNLOCK(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32 @PWM_LOCK_DESTROY(%struct.am335x_ehrpwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
