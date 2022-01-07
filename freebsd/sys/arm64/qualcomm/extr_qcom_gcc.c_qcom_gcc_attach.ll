; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/qualcomm/extr_qcom_gcc.c_qcom_gcc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/qualcomm/extr_qcom_gcc.c_qcom_gcc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_gcc_softc = type { i32 }

@qcom_gcc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qcom_gcc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_gcc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_gcc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.qcom_gcc_softc* @device_get_softc(i32 %5)
  store %struct.qcom_gcc_softc* %6, %struct.qcom_gcc_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @qcom_gcc_spec, align 4
  %9 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %9, i32 0, i32 0
  %11 = call i64 @bus_alloc_resources(i32 %7, i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %4, align 8
  %19 = call i32 @qcom_qdss_enable(%struct.qcom_gcc_softc* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.qcom_gcc_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @qcom_qdss_enable(%struct.qcom_gcc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
