; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_get_ro_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_get_ro_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s pins: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d-%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*, i32, i8*, i8*)* @bcm_gpio_get_ro_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_get_ro_pins(%struct.bcm_gpio_softc* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i32** %15 to i8**
  %19 = call i32 @OF_getencprop_alloc_multi(i32 %16, i8* %17, i32 4, i8** %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %128

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @OF_prop_free(i32* %27)
  store i32 0, i32* %5, align 4
  br label %128

29:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %41 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %45 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  store i32 %39, i32* %49, align 4
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %56 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  store i32 0, i32* %11, align 4
  %59 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %60 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  store i32 %66, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %106, %53
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  br label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  store i32 %101, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %105

102:                                              ; preds = %71
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %67

109:                                              ; preds = %67
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  br label %125

122:                                              ; preds = %114
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @OF_prop_free(i32* %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %26, %22
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
