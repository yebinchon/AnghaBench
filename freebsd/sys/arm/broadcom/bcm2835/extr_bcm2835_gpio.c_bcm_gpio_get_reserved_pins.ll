; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_get_reserved_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_get_reserved_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"broadcom,read-only\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"broadcom,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*)* @bcm_gpio_get_reserved_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_get_reserved_pins(%struct.bcm_gpio_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_gpio_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %3, align 8
  %9 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ofw_bus_get_node(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @bcm_gpio_get_ro_pins(%struct.bcm_gpio_softc* %13, i64 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @OF_child(i64 %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %41, %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @OF_getprop_alloc(i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %57

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @OF_prop_free(i8* %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @OF_peer(i64 %44)
  store i64 %45, i64* %6, align 8
  br label %21

46:                                               ; preds = %27
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %57

50:                                               ; preds = %46
  %51 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @bcm_gpio_get_ro_pins(%struct.bcm_gpio_softc* %51, i64 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %49, %34, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @bcm_gpio_get_ro_pins(%struct.bcm_gpio_softc*, i64, i8*, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
