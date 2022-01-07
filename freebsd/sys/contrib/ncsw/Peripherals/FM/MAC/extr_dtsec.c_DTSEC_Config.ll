; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DTSEC_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DTSEC_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_cfg = type { i32, %struct.dtsec_cfg*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dtsec_mii_reg*, %struct.dtsec_regs*, i32 }
%struct.dtsec_mii_reg = type { i32 }
%struct.dtsec_regs = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dTSEC driver structure\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dTSEC driver parameters\00", align 1
@DTSEC_TO_MII_OFFSET = common dso_local global i64 0, align 8
@DEFAULT_exceptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dtsec_cfg* @DTSEC_Config(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.dtsec_cfg*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.dtsec_cfg*, align 8
  %5 = alloca %struct.dtsec_cfg*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @E_NULL_POINTER, align 4
  %9 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__* %7, i32 %8, i32* null)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = call i64 @XX_Malloc(i32 88)
  %14 = inttoptr i64 %13 to %struct.dtsec_cfg*
  store %struct.dtsec_cfg* %14, %struct.dtsec_cfg** %4, align 8
  %15 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %16 = icmp ne %struct.dtsec_cfg* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_NO_MEMORY, align 4
  %20 = call i32 @REPORT_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.dtsec_cfg* null, %struct.dtsec_cfg** %2, align 8
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %23 = call i32 @memset(%struct.dtsec_cfg* %22, i32 0, i32 88)
  %24 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %24, i32 0, i32 16
  %26 = call i32 @InitFmMacControllerDriver(i32* %25)
  %27 = call i64 @XX_Malloc(i32 88)
  %28 = inttoptr i64 %27 to %struct.dtsec_cfg*
  store %struct.dtsec_cfg* %28, %struct.dtsec_cfg** %5, align 8
  %29 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %5, align 8
  %30 = icmp ne %struct.dtsec_cfg* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %33 = call i32 @XX_Free(%struct.dtsec_cfg* %32)
  %34 = load i32, i32* @MAJOR, align 4
  %35 = load i32, i32* @E_NO_MEMORY, align 4
  %36 = call i32 @REPORT_ERROR(i32 %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dtsec_cfg* null, %struct.dtsec_cfg** %2, align 8
  br label %118

37:                                               ; preds = %21
  %38 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %5, align 8
  %39 = call i32 @memset(%struct.dtsec_cfg* %38, i32 0, i32 88)
  %40 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %5, align 8
  %41 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %41, i32 0, i32 1
  store %struct.dtsec_cfg* %40, %struct.dtsec_cfg** %42, align 8
  %43 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %5, align 8
  %44 = call i32 @fman_dtsec_defconfig(%struct.dtsec_cfg* %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @UINT_TO_PTR(i64 %45)
  %47 = inttoptr i64 %46 to %struct.dtsec_regs*
  %48 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %48, i32 0, i32 15
  store %struct.dtsec_regs* %47, %struct.dtsec_regs** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @DTSEC_TO_MII_OFFSET, align 8
  %52 = add i64 %50, %51
  %53 = call i64 @UINT_TO_PTR(i64 %52)
  %54 = inttoptr i64 %53 to %struct.dtsec_mii_reg*
  %55 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %55, i32 0, i32 14
  store %struct.dtsec_mii_reg* %54, %struct.dtsec_mii_reg** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ENET_ADDR_TO_UINT64(i32 %59)
  %61 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %61, i32 0, i32 13
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @DEFAULT_exceptions, align 4
  %74 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %85 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %95 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %96, i32 0, i32 1
  %98 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %97, align 8
  %99 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %104 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %103, i32 0, i32 1
  %105 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %104, align 8
  %106 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %109 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %111 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %110, i32 0, i32 1
  %112 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %111, align 8
  %113 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  %116 = getelementptr inbounds %struct.dtsec_cfg, %struct.dtsec_cfg* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %4, align 8
  store %struct.dtsec_cfg* %117, %struct.dtsec_cfg** %2, align 8
  br label %118

118:                                              ; preds = %37, %31, %17
  %119 = load %struct.dtsec_cfg*, %struct.dtsec_cfg** %2, align 8
  ret %struct.dtsec_cfg* %119
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.dtsec_cfg*, i32, i32) #1

declare dso_local i32 @InitFmMacControllerDriver(i32*) #1

declare dso_local i32 @XX_Free(%struct.dtsec_cfg*) #1

declare dso_local i32 @fman_dtsec_defconfig(%struct.dtsec_cfg*) #1

declare dso_local i64 @UINT_TO_PTR(i64) #1

declare dso_local i32 @ENET_ADDR_TO_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
