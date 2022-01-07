; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_read_edid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i64, i32*, i32, i32 }

@TDA19988 = common dso_local global i64 0, align 8
@TDA_TX4 = common dso_local global i32 0, align 4
@TX4_PD_RAM = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@hdmi_event = common dso_local global i32 0, align 4
@HDMI_EVENT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*)* @tda19988_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_read_edid(%struct.tda19988_softc* %0) #0 {
  %2 = alloca %struct.tda19988_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %8 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TDA19988, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %14 = load i32, i32* @TDA_TX4, align 4
  %15 = load i32, i32* @TX4_PD_RAM, align 4
  %16 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %19 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %20 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @tda19988_read_edid_block(%struct.tda19988_softc* %18, i32* %21, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %86

26:                                               ; preds = %17
  %27 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %28 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 126
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %26
  %35 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %36 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @EDID_LENGTH, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 %38, %40
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = call i32* @realloc(i32* %37, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %46 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @EDID_LENGTH, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = mul nsw i32 %47, %49
  %51 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %52 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %75, %34
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %59 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @EDID_LENGTH, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32* %66, i32** %6, align 8
  %67 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @tda19988_read_edid_block(%struct.tda19988_softc* %67, i32* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %86

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %53

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %26
  %80 = load i32, i32* @hdmi_event, align 4
  %81 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %82 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HDMI_EVENT_CONNECTED, align 4
  %85 = call i32 @EVENTHANDLER_INVOKE(i32 %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %73, %25
  %87 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %88 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TDA19988, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.tda19988_softc*, %struct.tda19988_softc** %2, align 8
  %94 = load i32, i32* @TDA_TX4, align 4
  %95 = load i32, i32* @TX4_PD_RAM, align 4
  %96 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %86
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @tda19988_reg_clear(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_read_edid_block(%struct.tda19988_softc*, i32*, i32) #1

declare dso_local i32* @realloc(i32*, i32, i32, i32) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32, i32) #1

declare dso_local i32 @tda19988_reg_set(%struct.tda19988_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
