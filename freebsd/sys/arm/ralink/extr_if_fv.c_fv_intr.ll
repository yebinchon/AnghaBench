; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@CSR_STATUS = common dso_local global i32 0, align 4
@STATUS_UNF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Transmit Underflow\0A\00", align 1
@STATUS_AIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Abnormal Interrupt %x\0A\00", align 1
@CSR_FULLDUP = common dso_local global i32 0, align 4
@FULLDUP_CS = common dso_local global i32 0, align 4
@FULLDUP_TT_SHIFT = common dso_local global i32 0, align 4
@FULLDUP_NTP_SHIFT = common dso_local global i32 0, align 4
@FULLDUP_RT_SHIFT = common dso_local global i32 0, align 4
@FULLDUP_NRP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fv_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fv_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fv_softc*
  store %struct.fv_softc* %7, %struct.fv_softc** %3, align 8
  %8 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %9 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %8, i32 0, i32 4
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %12 = call i32 @FV_LOCK(%struct.fv_softc* %11)
  %13 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %14 = load i32, i32* @CSR_STATUS, align 4
  %15 = call i32 @CSR_READ_4(%struct.fv_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %72, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %19 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %28 = load i32, i32* @CSR_STATUS, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.fv_softc* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STATUS_UNF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %44 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %50 = call i32 @fv_rx(%struct.fv_softc* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %54 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %60 = call i32 @fv_tx(%struct.fv_softc* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @STATUS_AIS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %74 = load i32, i32* @CSR_FULLDUP, align 4
  %75 = load i32, i32* @FULLDUP_CS, align 4
  %76 = load i32, i32* @FULLDUP_TT_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @FULLDUP_NTP_SHIFT, align 4
  %80 = shl i32 3, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @FULLDUP_RT_SHIFT, align 4
  %83 = shl i32 2, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @FULLDUP_NRP_SHIFT, align 4
  %86 = shl i32 2, %85
  %87 = or i32 %84, %86
  %88 = call i32 @CSR_WRITE_4(%struct.fv_softc* %73, i32 %74, i32 %87)
  %89 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %90 = load i32, i32* @CSR_STATUS, align 4
  %91 = call i32 @CSR_READ_4(%struct.fv_softc* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %16

92:                                               ; preds = %16
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = call i32 @IFQ_DRV_IS_EMPTY(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %99 = call i32 @fv_start_locked(%struct.ifnet* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %102 = call i32 @FV_UNLOCK(%struct.fv_softc* %101)
  ret void
}

declare dso_local i32 @FV_LOCK(%struct.fv_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.fv_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @fv_rx(%struct.fv_softc*) #1

declare dso_local i32 @fv_tx(%struct.fv_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @fv_start_locked(%struct.ifnet*) #1

declare dso_local i32 @FV_UNLOCK(%struct.fv_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
