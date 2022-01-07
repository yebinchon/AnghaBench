; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgInitMaster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgInitMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.fman_kg_regs* }
%struct.fman_kg_regs = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_EX_KG_DOUBLE_ECC = common dso_local global i32 0, align 4
@e_FM_MOD_KG = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@PcdKgErrorException = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @KgInitMaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @KgInitMaster(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fman_kg_regs*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i64, i64* @E_OK, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %9, align 8
  store %struct.fman_kg_regs* %10, %struct.fman_kg_regs** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NCSW_MASTER_ID, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT_COND(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @FmEnableRamsEcc(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @GET_NIA_BMI_AC_ENQ_FRAME(%struct.TYPE_8__* %34)
  %36 = call i32 @fman_kg_init(%struct.fman_kg_regs* %30, i32 %33, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @e_FM_MOD_KG, align 4
  %41 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %42 = load i32, i32* @PcdKgErrorException, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = call i32 @FmRegisterIntr(i32 %39, i32 %40, i32 0, i32 %41, i32 %42, %struct.TYPE_8__* %43)
  %45 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %46 = call i32 @fman_kg_enable_scheme_interrupts(%struct.fman_kg_regs* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %29
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @FmPcdKgAllocSchemes(%struct.TYPE_8__* %54, i64 %59, i64 %62, i32 %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %53
  %72 = load i32, i32* @MINOR, align 4
  %73 = load i64, i64* %3, align 8
  %74 = load i32, i32* @NO_MSG, align 4
  %75 = call i32 @RETURN_ERROR(i32 %72, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %53
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i64, i64* @E_OK, align 8
  ret i64 %78
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FmEnableRamsEcc(i32) #1

declare dso_local i32 @fman_kg_init(%struct.fman_kg_regs*, i32, i32) #1

declare dso_local i32 @GET_NIA_BMI_AC_ENQ_FRAME(%struct.TYPE_8__*) #1

declare dso_local i32 @FmRegisterIntr(i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @fman_kg_enable_scheme_interrupts(%struct.fman_kg_regs*) #1

declare dso_local i64 @FmPcdKgAllocSchemes(%struct.TYPE_8__*, i64, i64, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
