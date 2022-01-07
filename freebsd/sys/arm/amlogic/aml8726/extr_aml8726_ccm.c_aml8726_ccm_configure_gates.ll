; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_ccm.c_aml8726_ccm_configure_gates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_ccm.c_aml8726_ccm_configure_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_ccm_softc = type { i32, %struct.aml8726_ccm_function* }
%struct.aml8726_ccm_function = type { %struct.aml8726_ccm_gate*, i32* }
%struct.aml8726_ccm_gate = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"missing functions attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unknown function attribute %.*s in FDT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_ccm_softc*)* @aml8726_ccm_configure_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_ccm_configure_gates(%struct.aml8726_ccm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aml8726_ccm_softc*, align 8
  %4 = alloca %struct.aml8726_ccm_function*, align 8
  %5 = alloca %struct.aml8726_ccm_gate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.aml8726_ccm_softc* %0, %struct.aml8726_ccm_softc** %3, align 8
  %11 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @OF_getprop_alloc(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %131

25:                                               ; preds = %1
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %125, %93, %25
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %128

30:                                               ; preds = %27
  %31 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %32 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %31, i32 0, i32 1
  %33 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %32, align 8
  store %struct.aml8726_ccm_function* %33, %struct.aml8726_ccm_function** %4, align 8
  br label %34

34:                                               ; preds = %49, %30
  %35 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %36 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %41 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @strncmp(i32* %42, i8* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %51 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %50, i32 1
  store %struct.aml8726_ccm_function* %51, %struct.aml8726_ccm_function** %4, align 8
  br label %34

52:                                               ; preds = %47, %34
  %53 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %54 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %61, i8* %62)
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i1 [ false, %65 ], [ %72, %70 ]
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %9, align 8
  br label %65

80:                                               ; preds = %73
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %90 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %27

94:                                               ; preds = %88
  %95 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %96 = call i32 @AML_CCM_LOCK(%struct.aml8726_ccm_softc* %95)
  %97 = load %struct.aml8726_ccm_function*, %struct.aml8726_ccm_function** %4, align 8
  %98 = getelementptr inbounds %struct.aml8726_ccm_function, %struct.aml8726_ccm_function* %97, i32 0, i32 0
  %99 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %98, align 8
  store %struct.aml8726_ccm_gate* %99, %struct.aml8726_ccm_gate** %5, align 8
  br label %100

100:                                              ; preds = %122, %94
  %101 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %5, align 8
  %102 = getelementptr inbounds %struct.aml8726_ccm_gate, %struct.aml8726_ccm_gate* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %107 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %5, align 8
  %108 = getelementptr inbounds %struct.aml8726_ccm_gate, %struct.aml8726_ccm_gate* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CSR_READ_4(%struct.aml8726_ccm_softc* %106, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %5, align 8
  %112 = getelementptr inbounds %struct.aml8726_ccm_gate, %struct.aml8726_ccm_gate* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %117 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %5, align 8
  %118 = getelementptr inbounds %struct.aml8726_ccm_gate, %struct.aml8726_ccm_gate* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @CSR_WRITE_4(%struct.aml8726_ccm_softc* %116, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %105
  %123 = load %struct.aml8726_ccm_gate*, %struct.aml8726_ccm_gate** %5, align 8
  %124 = getelementptr inbounds %struct.aml8726_ccm_gate, %struct.aml8726_ccm_gate* %123, i32 1
  store %struct.aml8726_ccm_gate* %124, %struct.aml8726_ccm_gate** %5, align 8
  br label %100

125:                                              ; preds = %100
  %126 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %3, align 8
  %127 = call i32 @AML_CCM_UNLOCK(%struct.aml8726_ccm_softc* %126)
  br label %27

128:                                              ; preds = %27
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @OF_prop_free(i8* %129)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %19
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32 @AML_CCM_LOCK(%struct.aml8726_ccm_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_ccm_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_ccm_softc*, i32, i32) #1

declare dso_local i32 @AML_CCM_UNLOCK(%struct.aml8726_ccm_softc*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
