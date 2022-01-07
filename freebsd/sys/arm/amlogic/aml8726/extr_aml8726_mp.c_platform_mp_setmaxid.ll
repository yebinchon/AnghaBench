; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_platform_mp_setmaxid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_platform_mp_setmaxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"scu\00", align 1
@scu_compatible = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cpuconfig\00", align 1
@cpucfg_compatible = common dso_local global i32 0, align 4
@aml8726_smp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not allocate resource for SCU\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not allocate resource for CPUCONFIG\00", align 1
@fdtbus_bs_tag = common dso_local global i8* null, align 8
@AML_SOC_AOBUS_BASE_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not allocate resource for AOBUS\00", align 1
@AML_SOC_CBUS_BASE_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not allocate resource for CBUS\00", align 1
@scu_errata_764369 = common dso_local global i64* null, align 8
@AML_SCU_CONFIG_REG = common dso_local global i32 0, align 4
@AML_SCU_CONFIG_NCPU_MASK = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_mp_setmaxid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @mp_ncpus, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %83

10:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  %11 = load i32, i32* @scu_compatible, align 4
  %12 = call i32 @find_node_for_device(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %79

15:                                               ; preds = %10
  %16 = load i32, i32* @cpucfg_compatible, align 4
  %17 = call i32 @find_node_for_device(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %79

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @alloc_resource_for_node(i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 6), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 5))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @alloc_resource_for_node(i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 3))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** @fdtbus_bs_tag, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 2, i32 1), align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 2, i32 1), align 8
  %35 = load i32, i32* @AML_SOC_AOBUS_BASE_ADDR, align 4
  %36 = call i32 @bus_space_map(i8* %34, i32 %35, i32 1048576, i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 2, i32 0))
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i8*, i8** @fdtbus_bs_tag, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 1, i32 1), align 8
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 1, i32 1), align 8
  %44 = load i32, i32* @AML_SOC_CBUS_BASE_ADDR, align 4
  %45 = call i32 @bus_space_map(i8* %43, i32 %44, i32 1048576, i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 1, i32 0))
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i64*, i64** @scu_errata_764369, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i64*, i64** @scu_errata_764369, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @fdt_is_compatible_strict(i32 %59, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aml8726_smp, i32 0, i32 0), align 8
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %51

72:                                               ; preds = %67, %51
  %73 = load i32, i32* @AML_SCU_CONFIG_REG, align 4
  %74 = call i32 @SCU_READ_4(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AML_SCU_CONFIG_NCPU_MASK, align 4
  %77 = and i32 %75, %76
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %19, %14
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* @mp_ncpus, align 4
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* @mp_maxid, align 4
  br label %83

83:                                               ; preds = %79, %9
  ret void
}

declare dso_local i32 @find_node_for_device(i8*, i32) #1

declare dso_local i64 @alloc_resource_for_node(i32, i32*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_map(i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @fdt_is_compatible_strict(i32, i64) #1

declare dso_local i32 @SCU_READ_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
