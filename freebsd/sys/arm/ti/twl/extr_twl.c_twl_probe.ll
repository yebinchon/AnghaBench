; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ti,twl6030\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ti,twl6025\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ti,twl4030\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"TI TWL4030/TPS659x0 Companion IC\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"TI TWL6025 Companion IC\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"TI TWL6030 Companion IC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.twl_softc*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @ofw_bus_get_compat(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %94

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %94

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @OF_getproplen(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.twl_softc* @device_get_softc(i32 %27)
  store %struct.twl_softc* %28, %struct.twl_softc** %8, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %31 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %33 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %32, i32 0, i32 0
  store i32 128, i32* %33, align 4
  br label %34

34:                                               ; preds = %66, %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strncasecmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %43 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %42, i32 0, i32 0
  store i32 129, i32* %43, align 4
  br label %60

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strncasecmp(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %50 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %49, i32 0, i32 0
  store i32 130, i32* %50, align 4
  br label %59

51:                                               ; preds = %44
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strncasecmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %57 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %56, i32 0, i32 0
  store i32 131, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %48
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %62 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %77

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %34

77:                                               ; preds = %65, %34
  %78 = load %struct.twl_softc*, %struct.twl_softc** %8, align 8
  %79 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %91 [
    i32 131, label %81
    i32 130, label %84
    i32 129, label %87
    i32 128, label %90
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_set_desc(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %93

84:                                               ; preds = %77
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_set_desc(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %93

87:                                               ; preds = %77
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_set_desc(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %93

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %77, %90
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %87, %84, %81
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %91, %24, %18, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local %struct.twl_softc* @device_get_softc(i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
