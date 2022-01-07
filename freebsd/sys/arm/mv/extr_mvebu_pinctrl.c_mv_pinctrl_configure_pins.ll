; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_configure_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pinctrl_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"marvell,function\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"marvell,pins\00", align 1
@MAX_PIN_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mv_pinctrl_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pinctrl_configure_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_pinctrl_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.mv_pinctrl_softc* @device_get_softc(i32 %14)
  store %struct.mv_pinctrl_softc* %15, %struct.mv_pinctrl_softc** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_node_from_xref(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @OF_getprop_alloc(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %136

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ofw_bus_string_list_to_array(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8*** %9)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %136

30:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %130, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %133

35:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %39 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = load i8**, i8*** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %51 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @strcmp(i8* %49, i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %67

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %36

67:                                               ; preds = %62, %36
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %70 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %130

76:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %117, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MAX_PIN_FUNC, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %77
  %82 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %83 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %81
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %100 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @strcmp(i8* %98, i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %120

116:                                              ; preds = %97, %81
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %77

120:                                              ; preds = %115, %77
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @MAX_PIN_FUNC, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %130

125:                                              ; preds = %120
  %126 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @mv_pinctrl_configure_pin(%struct.mv_pinctrl_softc* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %124, %75
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %31

133:                                              ; preds = %31
  %134 = load i8**, i8*** %9, align 8
  %135 = call i32 @OF_prop_free(i8** %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %133, %28, %21
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.mv_pinctrl_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @ofw_bus_string_list_to_array(i32, i8*, i8***) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @mv_pinctrl_configure_pin(%struct.mv_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @OF_prop_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
