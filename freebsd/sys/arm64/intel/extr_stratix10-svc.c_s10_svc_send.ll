; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s10_svc_msg = type { i32, i32, i32, i64 }
%struct.s10_svc_softc = type { i32 (i64, i64, i64, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)* }
%struct.arm_smccc_res = type opaque
%struct.arm_smccc_res.0 = type { i32 }

@INTEL_SIP_SMC_FPGA_CONFIG_START = common dso_local global i64 0, align 8
@INTEL_SIP_SMC_FPGA_CONFIG_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s10_svc_send(i32 %0, %struct.s10_svc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.s10_svc_msg*, align 8
  %6 = alloca %struct.s10_svc_softc*, align 8
  %7 = alloca %struct.arm_smccc_res.0, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.s10_svc_msg* %1, %struct.s10_svc_msg** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.s10_svc_softc* @device_get_softc(i32 %12)
  store %struct.s10_svc_softc* %13, %struct.s10_svc_softc** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.s10_svc_msg*, %struct.s10_svc_msg** %5, align 8
  %15 = getelementptr inbounds %struct.s10_svc_msg, %struct.s10_svc_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %36 [
    i32 130, label %17
    i32 128, label %22
    i32 129, label %32
  ]

17:                                               ; preds = %2
  %18 = load i64, i64* @INTEL_SIP_SMC_FPGA_CONFIG_START, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.s10_svc_msg*, %struct.s10_svc_msg** %5, align 8
  %20 = getelementptr inbounds %struct.s10_svc_msg, %struct.s10_svc_msg* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load i64, i64* @INTEL_SIP_SMC_FPGA_CONFIG_WRITE, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.s10_svc_msg*, %struct.s10_svc_msg** %5, align 8
  %25 = getelementptr inbounds %struct.s10_svc_msg, %struct.s10_svc_msg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load %struct.s10_svc_msg*, %struct.s10_svc_msg** %5, align 8
  %29 = getelementptr inbounds %struct.s10_svc_msg, %struct.s10_svc_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %6, align 8
  %34 = call i32 @s10_data_claim(%struct.s10_svc_softc* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %47

37:                                               ; preds = %22, %17
  %38 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %6, align 8
  %39 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %38, i32 0, i32 0
  %40 = load i32 (i64, i64, i64, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)*, i32 (i64, i64, i64, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = bitcast %struct.arm_smccc_res.0* %7 to %struct.arm_smccc_res*
  %45 = call i32 %40(i64 %41, i64 %42, i64 %43, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %36, %32
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.s10_svc_softc* @device_get_softc(i32) #1

declare dso_local i32 @s10_data_claim(%struct.s10_svc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
