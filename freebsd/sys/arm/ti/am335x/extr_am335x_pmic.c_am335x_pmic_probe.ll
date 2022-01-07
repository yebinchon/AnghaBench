; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pmic.c_am335x_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_pmic_softc = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ti,tps65217\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"TI TPS65217 Power Management IC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_pmic_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_pmic_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_is_compatible(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.am335x_pmic_softc* @device_get_softc(i32 %11)
  store %struct.am335x_pmic_softc* %12, %struct.am335x_pmic_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %4, align 8
  %15 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @iicbus_get_addr(i32 %16)
  %18 = load %struct.am335x_pmic_softc*, %struct.am335x_pmic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.am335x_pmic_softc, %struct.am335x_pmic_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_desc(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %10, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local %struct.am335x_pmic_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
