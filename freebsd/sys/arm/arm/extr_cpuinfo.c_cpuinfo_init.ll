; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_cpuinfo.c_cpuinfo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_cpuinfo.c_cpuinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"hw.cpu.quirks.actlr_mask\00", align 1
@cpu_quirks_actlr_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"hw.cpu.quirks.actlr_set\00", align 1
@cpu_quirks_actlr_set = common dso_local global i32 0, align 4
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPU_ID_IMPLEMENTOR_MASK = common dso_local global i32 0, align 4
@CPU_ID_ARM_LTD = common dso_local global i32 0, align 4
@CPU_CT_ARMV7 = common dso_local global i64 0, align 8
@HWCAP2_AES = common dso_local global i32 0, align 4
@HWCAP2_CRC32 = common dso_local global i32 0, align 4
@HWCAP2_PMULL = common dso_local global i32 0, align 4
@HWCAP2_SHA1 = common dso_local global i32 0, align 4
@HWCAP2_SHA2 = common dso_local global i32 0, align 4
@HWCAP_EDSP = common dso_local global i32 0, align 4
@HWCAP_FAST_MULT = common dso_local global i32 0, align 4
@HWCAP_HALF = common dso_local global i32 0, align 4
@HWCAP_IDIVA = common dso_local global i32 0, align 4
@HWCAP_IDIVT = common dso_local global i32 0, align 4
@HWCAP_LPAE = common dso_local global i32 0, align 4
@HWCAP_THUMB = common dso_local global i32 0, align 4
@HWCAP_THUMBEE = common dso_local global i32 0, align 4
@HWCAP_TLS = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4
@elf_hwcap2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuinfo_init() #0 {
  %1 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* @cpu_quirks_actlr_mask)
  %2 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* @cpu_quirks_actlr_set)
  %3 = call i32 (...) @cp15_midr_get()
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %5 = load i32, i32* @CPU_ID_IMPLEMENTOR_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @CPU_ID_ARM_LTD, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %11 = call i64 @CPU_ID_ISOLD(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  br label %56

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %16 = call i64 @CPU_ID_IS7(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  br label %56

23:                                               ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 127
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 4
  br label %34

27:                                               ; preds = %14
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 15
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %32 = ashr i32 %31, 20
  %33 = and i32 %32, 15
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 4
  br label %34

34:                                               ; preds = %27, %23
  br label %42

35:                                               ; preds = %0
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 15
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %40 = ashr i32 %39, 20
  %41 = and i32 %40, 15
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 4
  br label %42

42:                                               ; preds = %35, %34
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %44 = ashr i32 %43, 24
  %45 = and i32 %44, 255
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 3), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 4095
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 4), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %50 = and i32 %49, 15
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 5), align 4
  %51 = call i32 (...) @cp15_ctr_get()
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 30), align 4
  %52 = call i32 (...) @cp15_tcmtr_get()
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 41), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %54 = icmp ne i32 %53, 15
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %13, %22, %55, %42
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @cp15_midr_get(...) #1

declare dso_local i64 @CPU_ID_ISOLD(i32) #1

declare dso_local i64 @CPU_ID_IS7(i32) #1

declare dso_local i32 @cp15_ctr_get(...) #1

declare dso_local i32 @cp15_tcmtr_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
