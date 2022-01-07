; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-init.c_cvmx_user_app_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-init.c_cvmx_user_app_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"CVMX    \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"BIST FAILURE: COP0_CACHE_ERR: 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"BIST FAILURE: COP0_CVM_MEM_CTL: 0x%llx\0A\00", align 1
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS2_X = common dso_local global i32 0, align 4
@CVMX_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@CVMX_BOOTINFO_CFG_FLAG_OVERSIZE_TLB_MAPPING = common dso_local global i32 0, align 4
@CVMX_TLB_PAGEMASK_16M = common dso_local global i32 0, align 4
@CVMX_TLB_PAGEMASK_1M = common dso_local global i32 0, align 4
@CVMX_TLB_PAGEMASK_256M = common dso_local global i32 0, align 4
@CVMX_TLB_PAGEMASK_4M = common dso_local global i32 0, align 4
@CVMX_TLB_PAGEMASK_64M = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@TLB_DIRTY = common dso_local global i32 0, align 4
@TLB_GLOBAL = common dso_local global i32 0, align 4
@TLB_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_user_app_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  %9 = call %struct.TYPE_3__* (...) @cvmx_sysinfo_get()
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @ebt3000_str_write(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @CVMX_MF_CACHE_ERR(i32 %17)
  store i32 0, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %16
  store i32 0, i32* %2, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @CVMX_MF_CVM_MEM_CTL(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %1, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CVMX_MF_CVM_MEM_CTL(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, -512
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %52, 260
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %56 = call i64 @OCTEON_IS_MODEL(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -30721
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, 8192
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %44
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @CVMX_MT_CVM_MEM_CTL(i32 %66)
  %68 = load i32, i32* @OCTEON_CN63XX_PASS2_X, align 4
  %69 = call i64 @OCTEON_IS_MODEL(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @CVMX_MF_CVM_MEM_CTL(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 63
  store i32 %75, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %85, %71
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CVMX_CACHE_LINE_SIZE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul i32 %78, %79
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @cvmx_scratch_write64(i32 %83, i32 0)
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 8
  store i32 %87, i32* %6, align 4
  br label %76

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %65
  %90 = call %struct.TYPE_3__* (...) @cvmx_sysinfo_get()
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %8, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cvmx_bootmem_init(i32 %93)
  %95 = call %struct.TYPE_3__* (...) @cvmx_sysinfo_get()
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @cvmx_coremask_first_core(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = call i32 (...) @cvmx_qlm_init()
  br label %102

102:                                              ; preds = %100, %89
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @ebt3000_str_write(i8*) #1

declare dso_local i32 @CVMX_MF_CACHE_ERR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CVMX_MF_CVM_MEM_CTL(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_MT_CVM_MEM_CTL(i32) #1

declare dso_local i32 @cvmx_scratch_write64(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_init(i32) #1

declare dso_local i64 @cvmx_coremask_first_core(i32) #1

declare dso_local i32 @cvmx_qlm_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
