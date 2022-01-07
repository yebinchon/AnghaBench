; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_get_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_get_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s10_svc_softc = type { i32*, i32, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)* }
%struct.arm_smccc_res = type opaque
%struct.arm_smccc_res.0 = type { i64, i32, i32 }

@INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM = common dso_local global i32 0, align 4
@INTEL_SIP_SMC_STATUS_OK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stratix10 vmem\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Shared memory address 0x%lx size 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s10_svc_softc*)* @s10_get_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_get_memory(%struct.s10_svc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s10_svc_softc*, align 8
  %4 = alloca %struct.arm_smccc_res.0, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.s10_svc_softc* %0, %struct.s10_svc_softc** %3, align 8
  %8 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %8, i32 0, i32 2
  %10 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*)** %9, align 8
  %11 = load i32, i32* @INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM, align 4
  %12 = bitcast %struct.arm_smccc_res.0* %4 to %struct.arm_smccc_res*
  %13 = call i32 %10(i32 %11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %12)
  %14 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTEL_SIP_SMC_STATUS_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @M_BESTFIT, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @vmem_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %21, i32 %22, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds %struct.arm_smccc_res.0, %struct.arm_smccc_res.0* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @vmem_add(i32* %42, i32 %43, i32 %44, i32 0)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %31, %29, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @vmem_add(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
