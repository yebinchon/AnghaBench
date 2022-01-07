; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MEMAC_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MEMAC_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_cfg = type { i32, i32, i32, i32, i32, i32, %struct.memac_mii_access_mem_map*, %struct.memac_regs*, i32, %struct.memac_cfg*, i32 }
%struct.memac_mii_access_mem_map = type { i32 }
%struct.memac_regs = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mEMAC driver structure\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mEMAC driver parameters\00", align 1
@MEMAC_TO_MII_OFFSET = common dso_local global i64 0, align 8
@MEMAC_default_exceptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.memac_cfg* @MEMAC_Config(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.memac_cfg*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.memac_cfg*, align 8
  %5 = alloca %struct.memac_cfg*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @E_NULL_POINTER, align 4
  %9 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__* %7, i32 %8, i32* null)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = call i64 @XX_Malloc(i32 64)
  %14 = inttoptr i64 %13 to %struct.memac_cfg*
  store %struct.memac_cfg* %14, %struct.memac_cfg** %4, align 8
  %15 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %16 = icmp ne %struct.memac_cfg* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_NO_MEMORY, align 4
  %20 = call i32 @REPORT_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.memac_cfg* null, %struct.memac_cfg** %2, align 8
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %23 = call i32 @memset(%struct.memac_cfg* %22, i32 0, i32 64)
  %24 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %24, i32 0, i32 10
  %26 = call i32 @InitFmMacControllerDriver(i32* %25)
  %27 = call i64 @XX_Malloc(i32 64)
  %28 = inttoptr i64 %27 to %struct.memac_cfg*
  store %struct.memac_cfg* %28, %struct.memac_cfg** %5, align 8
  %29 = load %struct.memac_cfg*, %struct.memac_cfg** %5, align 8
  %30 = icmp ne %struct.memac_cfg* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i32, i32* @E_NO_MEMORY, align 4
  %34 = call i32 @REPORT_ERROR(i32 %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %36 = call i32 @XX_Free(%struct.memac_cfg* %35)
  store %struct.memac_cfg* null, %struct.memac_cfg** %2, align 8
  br label %92

37:                                               ; preds = %21
  %38 = load %struct.memac_cfg*, %struct.memac_cfg** %5, align 8
  %39 = call i32 @memset(%struct.memac_cfg* %38, i32 0, i32 64)
  %40 = load %struct.memac_cfg*, %struct.memac_cfg** %5, align 8
  %41 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %41, i32 0, i32 9
  store %struct.memac_cfg* %40, %struct.memac_cfg** %42, align 8
  %43 = load %struct.memac_cfg*, %struct.memac_cfg** %5, align 8
  %44 = call i32 @fman_memac_defconfig(%struct.memac_cfg* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ENET_ADDR_TO_UINT64(i32 %47)
  %49 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @UINT_TO_PTR(i64 %51)
  %53 = inttoptr i64 %52 to %struct.memac_regs*
  %54 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %54, i32 0, i32 7
  store %struct.memac_regs* %53, %struct.memac_regs** %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @MEMAC_TO_MII_OFFSET, align 8
  %58 = add i64 %56, %57
  %59 = call i64 @UINT_TO_PTR(i64 %58)
  %60 = inttoptr i64 %59 to %struct.memac_mii_access_mem_map*
  %61 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %61, i32 0, i32 6
  store %struct.memac_mii_access_mem_map* %60, %struct.memac_mii_access_mem_map** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @MEMAC_default_exceptions, align 4
  %74 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %85 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  store %struct.memac_cfg* %91, %struct.memac_cfg** %2, align 8
  br label %92

92:                                               ; preds = %37, %31, %17
  %93 = load %struct.memac_cfg*, %struct.memac_cfg** %2, align 8
  ret %struct.memac_cfg* %93
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.memac_cfg*, i32, i32) #1

declare dso_local i32 @InitFmMacControllerDriver(i32*) #1

declare dso_local i32 @XX_Free(%struct.memac_cfg*) #1

declare dso_local i32 @fman_memac_defconfig(%struct.memac_cfg*) #1

declare dso_local i32 @ENET_ADDR_TO_UINT64(i32) #1

declare dso_local i64 @UINT_TO_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
