; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_ctrl_entry = type { i32 (i64, i32*, i32)*, i64 }

@MAX_PINS_PER_NODE = common dso_local global i32 0, align 4
@GPIOS_PROP_CELLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@gpio_controllers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rk30_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_gpio_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gpio_ctrl_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_PINS_PER_NODE, align 4
  %13 = load i32, i32* @GPIOS_PROP_CELLS, align 4
  %14 = mul nsw i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = call i64 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %4, align 8
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @OF_child(i64 %20)
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %89, %0
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %92

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @OF_child(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @OF_child(i64 %32)
  store i64 %33, i64* %2, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @OF_getproplen(i64 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nuw i64 4, %15
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %93

45:                                               ; preds = %38
  %46 = load i64, i64* %2, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @OF_getencprop(i64 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %17, i32 %47)
  store %struct.gpio_ctrl_entry* bitcast (i32* @gpio_controllers to %struct.gpio_ctrl_entry*), %struct.gpio_ctrl_entry** %8, align 8
  br label %49

49:                                               ; preds = %76, %45
  %50 = load %struct.gpio_ctrl_entry*, %struct.gpio_ctrl_entry** %8, align 8
  %51 = getelementptr inbounds %struct.gpio_ctrl_entry, %struct.gpio_ctrl_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = getelementptr inbounds i32, i32* %17, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = call i64 @OF_node_from_xref(i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.gpio_ctrl_entry*, %struct.gpio_ctrl_entry** %8, align 8
  %60 = getelementptr inbounds %struct.gpio_ctrl_entry, %struct.gpio_ctrl_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ofw_bus_node_is_compatible(i64 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load %struct.gpio_ctrl_entry*, %struct.gpio_ctrl_entry** %8, align 8
  %66 = getelementptr inbounds %struct.gpio_ctrl_entry, %struct.gpio_ctrl_entry* %65, i32 0, i32 0
  %67 = load i32 (i64, i32*, i32)*, i32 (i64, i32*, i32)** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %67(i64 %68, i32* %17, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %93

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.gpio_ctrl_entry*, %struct.gpio_ctrl_entry** %8, align 8
  %78 = getelementptr inbounds %struct.gpio_ctrl_entry, %struct.gpio_ctrl_entry* %77, i32 1
  store %struct.gpio_ctrl_entry* %78, %struct.gpio_ctrl_entry** %8, align 8
  br label %49

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i64, i64* %2, align 8
  %82 = call i64 @OF_peer(i64 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* %3, align 8
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = call i64 @OF_parent(i64 %86)
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %2, align 8
  %91 = call i64 @OF_peer(i64 %90)
  store i64 %91, i64* %2, align 8
  br label %22

92:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %72, %43
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @OF_finddevice(i8*) #2

declare dso_local i64 @OF_child(i64) #2

declare dso_local i32 @OF_getproplen(i64, i8*) #2

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #2

declare dso_local i64 @OF_node_from_xref(i32) #2

declare dso_local i64 @ofw_bus_node_is_compatible(i64, i64) #2

declare dso_local i64 @OF_peer(i64) #2

declare dso_local i64 @OF_parent(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
