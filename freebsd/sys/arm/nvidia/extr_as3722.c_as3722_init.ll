; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, i64 }

@AS3722_INT_PULL_UP = common dso_local global i32 0, align 4
@AS3722_I2C_PULL_UP = common dso_local global i32 0, align 4
@AS3722_IO_VOLTAGE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AS3722_INTERRUPT_MASK1 = common dso_local global i32 0, align 4
@AS3722_INTERRUPT_MASK2 = common dso_local global i32 0, align 4
@AS3722_INTERRUPT_MASK3 = common dso_local global i32 0, align 4
@AS3722_INTERRUPT_MASK4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_softc*)* @as3722_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_init(%struct.as3722_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3722_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %7 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @AS3722_INT_PULL_UP, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %16 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @AS3722_I2C_PULL_UP, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %25 = load i32, i32* @AS3722_IO_VOLTAGE, align 4
  %26 = load i32, i32* @AS3722_INT_PULL_UP, align 4
  %27 = load i32, i32* @AS3722_I2C_PULL_UP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RM1(%struct.as3722_softc* %24, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %23
  %36 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %37 = load i32, i32* @AS3722_INTERRUPT_MASK1, align 4
  %38 = call i32 @WR1(%struct.as3722_softc* %36, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %45 = load i32, i32* @AS3722_INTERRUPT_MASK2, align 4
  %46 = call i32 @WR1(%struct.as3722_softc* %44, i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %43
  %52 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %53 = load i32, i32* @AS3722_INTERRUPT_MASK3, align 4
  %54 = call i32 @WR1(%struct.as3722_softc* %52, i32 %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %51
  %60 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %61 = load i32, i32* @AS3722_INTERRUPT_MASK4, align 4
  %62 = call i32 @WR1(%struct.as3722_softc* %60, i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %57, %49, %41, %33
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @RM1(%struct.as3722_softc*, i32, i32, i32) #1

declare dso_local i32 @WR1(%struct.as3722_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
