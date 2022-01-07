; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_map_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_map_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_BOTH = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_HIGH = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_gpio_softc*, %struct.intr_map_data_fdt*, i32*, i32*)* @ti_gpio_pic_map_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pic_map_fdt(%struct.ti_gpio_softc* %0, %struct.intr_map_data_fdt* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data_fdt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ti_gpio_softc* %0, %struct.ti_gpio_softc** %6, align 8
  store %struct.intr_map_data_fdt* %1, %struct.intr_map_data_fdt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %12 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %17 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15, %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %91

27:                                               ; preds = %15
  %28 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %29 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @GPIO_INTR_EDGE_RISING, align 4
  store i32 %35, i32* %10, align 4
  br label %78

36:                                               ; preds = %27
  %37 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %38 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @GPIO_INTR_EDGE_FALLING, align 4
  store i32 %44, i32* %10, align 4
  br label %77

45:                                               ; preds = %36
  %46 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %47 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @GPIO_INTR_EDGE_BOTH, align 4
  store i32 %53, i32* %10, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %56 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @GPIO_INTR_LEVEL_HIGH, align 4
  store i32 %62, i32* %10, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %65 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @GPIO_INTR_LEVEL_LOW, align 4
  store i32 %71, i32* %10, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %61
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %34
  %79 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %80 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %78
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %72, %25
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
