; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ir_softc = type { i32, i64, i32 }

@AW_IR_RXSTA = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"RX interrupt status: %x\0A\00", align 1
@AW_IR_RXSTA_CLEARALL = common dso_local global i32 0, align 4
@AW_IR_RXINT_RAI_EN = common dso_local global i32 0, align 4
@AW_IR_RXINT_RPEI_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RX FIFO Data available or Packet end\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"raw buffer full\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RX Packet end\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Final IR code: %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"IR code status: %d\0A\00", align 1
@AW_IR_RXINT_ROI_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"RX FIFO overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aw_ir_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_ir_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aw_ir_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.aw_ir_softc*
  store %struct.aw_ir_softc* %10, %struct.aw_ir_softc** %3, align 8
  %11 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %12 = load i32, i32* @AW_IR_RXSTA, align 4
  %13 = call i32 @READ(%struct.aw_ir_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %24 = load i32, i32* @AW_IR_RXSTA, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AW_IR_RXSTA_CLEARALL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @WRITE(%struct.aw_ir_softc* %23, i32 %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AW_IR_RXINT_RAI_EN, align 4
  %31 = load i32, i32* @AW_IR_RXINT_RPEI_EN, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %22
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %40 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @AW_IR_RXSTA_COUNTER(i32 %44)
  store i32 %45, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %69, %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %52 = call i64 @aw_ir_buf_full(%struct.aw_ir_softc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %54
  br label %72

63:                                               ; preds = %50
  %64 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %65 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %66 = call i32 @aw_ir_read_data(%struct.aw_ir_softc* %65)
  %67 = call i32 @aw_ir_buf_write(%struct.aw_ir_softc* %64, i32 %66)
  br label %68

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %46

72:                                               ; preds = %62, %46
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @AW_IR_RXINT_RPEI_EN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %73
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %83 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %88 = call i64 @aw_ir_decode_packets(%struct.aw_ir_softc* %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @aw_ir_validate_code(i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %95 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @EV_MSC, align 4
  %98 = load i32, i32* @MSC_SCAN, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @evdev_push_event(i32 %96, i32 %97, i32 %98, i64 %99)
  %101 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %102 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @evdev_sync(i32 %103)
  br label %105

105:                                              ; preds = %93, %86
  %106 = load i64, i64* @bootverbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %110 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  %114 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %108, %105
  %120 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %121 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %73
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @AW_IR_RXINT_ROI_EN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i64, i64* @bootverbose, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %132 = getelementptr inbounds %struct.aw_ir_softc, %struct.aw_ir_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %127
  %136 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %3, align 8
  %137 = call i32 @aw_ir_buf_reset(%struct.aw_ir_softc* %136)
  br label %138

138:                                              ; preds = %135, %122
  ret void
}

declare dso_local i32 @READ(%struct.aw_ir_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @WRITE(%struct.aw_ir_softc*, i32, i32) #1

declare dso_local i32 @AW_IR_RXSTA_COUNTER(i32) #1

declare dso_local i64 @aw_ir_buf_full(%struct.aw_ir_softc*) #1

declare dso_local i32 @aw_ir_buf_write(%struct.aw_ir_softc*, i32) #1

declare dso_local i32 @aw_ir_read_data(%struct.aw_ir_softc*) #1

declare dso_local i64 @aw_ir_decode_packets(%struct.aw_ir_softc*) #1

declare dso_local i32 @aw_ir_validate_code(i64) #1

declare dso_local i32 @evdev_push_event(i32, i32, i32, i64) #1

declare dso_local i32 @evdev_sync(i32) #1

declare dso_local i32 @aw_ir_buf_reset(%struct.aw_ir_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
