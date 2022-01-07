; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_iic_softc = type { i32, i64 }

@aml8726_iic_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @aml8726_iic_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_iic_detach(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.aml8726_iic_softc*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.aml8726_iic_softc* @device_get_softc(i64 %5)
  store %struct.aml8726_iic_softc* %6, %struct.aml8726_iic_softc** %3, align 8
  %7 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %3, align 8
  %8 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @bus_generic_detach(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @device_delete_child(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %3, align 8
  %20 = call i32 @AML_I2C_LOCK_DESTROY(%struct.aml8726_iic_softc* %19)
  %21 = load i64, i64* %2, align 8
  %22 = load i32, i32* @aml8726_iic_spec, align 4
  %23 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %3, align 8
  %24 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_release_resources(i64 %21, i32 %22, i32 %25)
  ret i32 0
}

declare dso_local %struct.aml8726_iic_softc* @device_get_softc(i64) #1

declare dso_local i32 @bus_generic_detach(i64) #1

declare dso_local i32 @device_delete_child(i64, i64) #1

declare dso_local i32 @AML_I2C_LOCK_DESTROY(%struct.aml8726_iic_softc*) #1

declare dso_local i32 @bus_release_resources(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
