; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc_softc = type { i32 }

@MC_INTSTATUS = common dso_local global i32 0, align 4
@MC_INT_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Memory Controller Interrupt:\0A\00", align 1
@MC_INT_DECERR_MTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" - MTS carveout violation\0A\00", align 1
@MC_INT_SECERR_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c" - SEC carveout violation\0A\00", align 1
@MC_INT_DECERR_VPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c" - VPR requirements violated\0A\00", align 1
@MC_INT_INVALID_APB_ASID_UPDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c" - ivalid APB ASID update\0A\00", align 1
@MC_INT_INVALID_SMMU_PAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c" - SMMU address translation error\0A\00", align 1
@MC_INT_ARBITRATION_EMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c" - arbitration deadlock-prevention threshold hit\0A\00", align 1
@MC_INT_SECURITY_VIOLATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c" - SMMU address translation security error\0A\00", align 1
@MC_INT_DECERR_EMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c" - SMMU address decode error\0A\00", align 1
@MC_ERR_STATUS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c" at 0x%012llX [%s %s %s]  - %s error.\0A\00", align 1
@MC_ERR_SWAP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Swap, \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MC_ERR_SECURITY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"Sec, \00", align 1
@MC_ERR_RW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@smmu_err_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tegra_mc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_mc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_mc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.tegra_mc_softc*
  store %struct.tegra_mc_softc* %8, %struct.tegra_mc_softc** %3, align 8
  %9 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %10 = load i32, i32* @MC_INTSTATUS, align 4
  %11 = call i32 @RD4(%struct.tegra_mc_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MC_INT_INT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %18 = load i32, i32* @MC_INTSTATUS, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @WR4(%struct.tegra_mc_softc* %17, i32 %18, i32 %19)
  br label %133

21:                                               ; preds = %1
  %22 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MC_INT_DECERR_MTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MC_INT_SECERR_SEC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MC_INT_DECERR_VPR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MC_INT_INVALID_APB_ASID_UPDATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MC_INT_INVALID_SMMU_PAGE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MC_INT_ARBITRATION_EMEM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @MC_INT_SECURITY_VIOLATION, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MC_INT_DECERR_EMEM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MC_INT_INVALID_SMMU_PAGE, align 4
  %84 = load i32, i32* @MC_INT_SECURITY_VIOLATION, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MC_INT_DECERR_EMEM, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %82, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %81
  %91 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %92 = load i32, i32* @MC_ERR_STATUS, align 4
  %93 = call i32 @RD4(%struct.tegra_mc_softc* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %95 = load i32, i32* @MC_ERR_STATUS, align 4
  %96 = call i32 @RD4(%struct.tegra_mc_softc* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @MC_ERR_ADR_HI(i32 %97)
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 32
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @MC_ERR_SWAP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @MC_ERR_SECURITY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @MC_ERR_RW, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %122 = load i32*, i32** @smmu_err_tbl, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @MC_ERR_TYPE(i32 %123)
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %103, i8* %109, i8* %115, i8* %121, i32 %126)
  br label %128

128:                                              ; preds = %90, %81
  %129 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %3, align 8
  %130 = load i32, i32* @MC_INTSTATUS, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @WR4(%struct.tegra_mc_softc* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %16
  ret void
}

declare dso_local i32 @RD4(%struct.tegra_mc_softc*, i32) #1

declare dso_local i32 @WR4(%struct.tegra_mc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @MC_ERR_ADR_HI(i32) #1

declare dso_local i64 @MC_ERR_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
