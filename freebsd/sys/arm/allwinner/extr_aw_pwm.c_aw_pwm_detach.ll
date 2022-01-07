; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_pwm_softc = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"cannot detach child devices\0A\00", align 1
@aw_pwm_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_pwm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_pwm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_pwm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aw_pwm_softc* @device_get_softc(i32 %6)
  store %struct.aw_pwm_softc* %7, %struct.aw_pwm_softc** %4, align 8
  %8 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_generic_detach(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @device_delete_child(i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @aw_pwm_spec, align 4
  %38 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %38, i32 0, i32 0
  %40 = call i32 @bus_release_resources(i32 %36, i32 %37, i32** %39)
  br label %41

41:                                               ; preds = %35, %30
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.aw_pwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
