; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_configure_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }

@bcm_gpio_configure_pins.sc = internal global %struct.bcm_gpio_softc* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"brcm,pins\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"brcm,function\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"brcm,pull\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"set pin %d to func %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c", pull %d\00", align 1
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: invalid pull value for pin %d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bcm_gpio_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_configure_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %15)
  store %struct.bcm_gpio_softc* %16, %struct.bcm_gpio_softc** @bcm_gpio_configure_pins.sc, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @OF_node_from_xref(i32 %17)
  store i32 %18, i32* %6, align 4
  store i32* null, i32** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = bitcast i32** %11 to i8**
  %21 = call i32 @OF_getencprop_alloc_multi(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4, i8** %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = bitcast [32 x i8]* %14 to i8**
  %24 = call i32 @OF_getprop(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %23, i32 32)
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %140

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32 4)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @OF_prop_free(i32* %38)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %140

41:                                               ; preds = %33
  store i32* null, i32** %12, align 8
  %42 = load i32, i32* %6, align 4
  %43 = bitcast i32** %12 to i8**
  %44 = call i32 @OF_getencprop_alloc_multi(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 4, i8** %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @OF_prop_free(i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @OF_prop_free(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %140

57:                                               ; preds = %47, %41
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %128, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @bcm_gpio_set_alternate(i32 %68, i32 %69, i32 %70)
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = load i64, i64* @bootverbose, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %112 [
    i32 129, label %98
    i32 128, label %102
    i32 130, label %107
  ]

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @bcm_gpio_pin_setflags(i32 %99, i32 %100, i32 0)
  br label %121

102:                                              ; preds = %92
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %106 = call i32 @bcm_gpio_pin_setflags(i32 %103, i32 %104, i32 %105)
  br label %121

107:                                              ; preds = %92
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %111 = call i32 @bcm_gpio_pin_setflags(i32 %108, i32 %109, i32 %110)
  br label %121

112:                                              ; preds = %92
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %114 = load i32, i32* %10, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %113, i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %112, %107, %102, %98
  br label %122

122:                                              ; preds = %121, %79
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %58

131:                                              ; preds = %58
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @OF_prop_free(i32* %132)
  %134 = load i32*, i32** %12, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @OF_prop_free(i32* %137)
  br label %139

139:                                              ; preds = %136, %131
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %51, %37, %32, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32 @bcm_gpio_set_alternate(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bcm_gpio_pin_setflags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
