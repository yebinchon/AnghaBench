; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_parse_dts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_parse_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ckb_softc = type { i8*, i8*, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"google,key-rows\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"google,key-columns\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"freebsd,intr-gpio\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"freebsd,keymap\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"using FreeBSD-specific keymap from FDT\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"using Linux keymap from FDT\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"using built-in keymap\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to read keymap from FDT: %d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@default_keymap = common dso_local global i8** null, align 8
@KEYMAP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ckb_softc*)* @parse_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dts(%struct.ckb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ckb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ckb_softc* %0, %struct.ckb_softc** %3, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %132

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @OF_getproplen(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %132

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %5, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @OF_getproplen(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %132

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @OF_getencprop(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %5, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @OF_getproplen(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %132

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @OF_getencprop(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %5, i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @OF_hasprop(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %58 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %77

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @OF_hasprop(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  %67 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %76

71:                                               ; preds = %62
  %72 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @read_keymap(i32 %81, i8* %82, i8*** %6, i32* %7)
  store i32 %83, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %132

92:                                               ; preds = %80
  %93 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @parse_keymap(%struct.ckb_softc* %93, i8** %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32, i32* @M_DEVBUF, align 4
  %99 = call i32 @free(i8** %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %132

104:                                              ; preds = %92
  br label %114

105:                                              ; preds = %77
  %106 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %107 = load i8**, i8*** @default_keymap, align 8
  %108 = load i32, i32* @KEYMAP_LEN, align 4
  %109 = call i32 @parse_keymap(%struct.ckb_softc* %106, i8** %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %132

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %104
  %115 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %124, %119, %114
  %130 = load i32, i32* @ENXIO, align 4
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %129, %111, %102, %85, %45, %33, %21, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @read_keymap(i32, i8*, i8***, i32*) #1

declare dso_local i32 @parse_keymap(%struct.ckb_softc*, i8**, i32) #1

declare dso_local i32 @free(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
