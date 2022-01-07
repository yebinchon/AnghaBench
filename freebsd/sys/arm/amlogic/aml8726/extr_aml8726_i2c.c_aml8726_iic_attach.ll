; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_iic_softc = type { i32, i32*, i32 }

@aml8726_iic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iicbb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"could not add iicbb\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"could not attach iicbb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_iic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_iic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_iic_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aml8726_iic_softc* @device_get_softc(i32 %6)
  store %struct.aml8726_iic_softc* %7, %struct.aml8726_iic_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @aml8726_iic_spec, align 4
  %13 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %24 = call i32 @AML_I2C_LOCK_INIT(%struct.aml8726_iic_softc* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @device_add_child(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %27 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %30 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %22
  %38 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @device_probe_and_attach(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %58

48:                                               ; preds = %44, %33
  %49 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %50 = call i32 @AML_I2C_LOCK_DESTROY(%struct.aml8726_iic_softc* %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @aml8726_iic_spec, align 4
  %53 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %4, align 8
  %54 = getelementptr inbounds %struct.aml8726_iic_softc, %struct.aml8726_iic_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bus_release_resources(i32 %51, i32 %52, i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %47, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.aml8726_iic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AML_I2C_LOCK_INIT(%struct.aml8726_iic_softc*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @AML_I2C_LOCK_DESTROY(%struct.aml8726_iic_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
