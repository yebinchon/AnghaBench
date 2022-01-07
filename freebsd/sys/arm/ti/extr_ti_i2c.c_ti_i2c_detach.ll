; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_i2c_softc = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"cannot detach child devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_i2c_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_i2c_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_i2c_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ti_i2c_softc* @device_get_softc(i32 %6)
  store %struct.ti_i2c_softc* %7, %struct.ti_i2c_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @device_delete_child(i32 %21, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %20, %15
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ti_i2c_deactivate(i32 %30)
  %32 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %33 = call i32 @TI_I2C_LOCK_DESTROY(%struct.ti_i2c_softc* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.ti_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @ti_i2c_deactivate(i32) #1

declare dso_local i32 @TI_I2C_LOCK_DESTROY(%struct.ti_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
