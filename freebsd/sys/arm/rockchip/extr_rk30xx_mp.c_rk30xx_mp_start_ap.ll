; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_mp.c_rk30xx_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_mp.c_rk30xx_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@SCU_PHYSBASE = common dso_local global i32 0, align 4
@SCU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map the SCU\00", align 1
@IMEM_PHYSBASE = common dso_local global i32 0, align 4
@IMEM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not map the IMEM\00", align 1
@PMU_PHYSBASE = common dso_local global i32 0, align 4
@PMU_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not map the PMU\00", align 1
@SCU_INV_TAGS_REG = common dso_local global i32 0, align 4
@PMU_PWRDN_CON = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@PMU_PWRDN_SCU = common dso_local global i32 0, align 4
@SCU_CONTROL_REG = common dso_local global i32 0, align 4
@SCU_CONTROL_ENABLE = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@mpentry_addr = common dso_local global i8* null, align 8
@rk30xx_boot2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk30xx_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @fdtbus_bs_tag, align 4
  %9 = load i32, i32* @SCU_PHYSBASE, align 4
  %10 = load i32, i32* @SCU_SIZE, align 4
  %11 = call i64 @bus_space_map(i32 %8, i32 %9, i32 %10, i32 0, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @fdtbus_bs_tag, align 4
  %17 = load i32, i32* @IMEM_PHYSBASE, align 4
  %18 = load i32, i32* @IMEM_SIZE, align 4
  %19 = call i64 @bus_space_map(i32 %16, i32 %17, i32 %18, i32 0, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i32, i32* @PMU_PHYSBASE, align 4
  %26 = load i32, i32* @PMU_SIZE, align 4
  %27 = call i64 @bus_space_map(i32 %24, i32 %25, i32 %26, i32 0, i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* @fdtbus_bs_tag, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SCU_INV_TAGS_REG, align 4
  %35 = call i32 @bus_space_write_4(i32 %32, i32 %33, i32 %34, i32 65535)
  %36 = load i32, i32* @fdtbus_bs_tag, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PMU_PWRDN_CON, align 4
  %39 = call i32 @bus_space_read_4(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %49, %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @mp_ncpus, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load i32, i32* @fdtbus_bs_tag, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PMU_PWRDN_CON, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @bus_space_write_4(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @fdtbus_bs_tag, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PMU_PWRDN_CON, align 4
  %61 = call i32 @bus_space_read_4(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @PMU_PWRDN_SCU, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @fdtbus_bs_tag, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PMU_PWRDN_CON, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @bus_space_write_4(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @fdtbus_bs_tag, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SCU_CONTROL_REG, align 4
  %74 = call i32 @bus_space_read_4(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @fdtbus_bs_tag, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SCU_CONTROL_REG, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @SCU_CONTROL_ENABLE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @bus_space_write_4(i32 %75, i32 %76, i32 %77, i32 %80)
  %82 = load i64, i64* @mpentry, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @pmap_kextract(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** @mpentry_addr, align 8
  %86 = load i32, i32* @fdtbus_bs_tag, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @bus_space_write_region_4(i32 %86, i32 %87, i32 0, i32* @rk30xx_boot2, i32 8)
  %89 = call i32 (...) @dcache_wbinv_poc_all()
  %90 = load i32, i32* @fdtbus_bs_tag, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PMU_PWRDN_CON, align 4
  %93 = call i32 @bus_space_read_4(i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %104, %52
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @mp_ncpus, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 1, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %94

107:                                              ; preds = %94
  %108 = load i32, i32* @fdtbus_bs_tag, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @PMU_PWRDN_CON, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @bus_space_write_4(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = call i32 (...) @dsb()
  %114 = call i32 (...) @sev()
  %115 = load i32, i32* @fdtbus_bs_tag, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @SCU_SIZE, align 4
  %118 = call i32 @bus_space_unmap(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @fdtbus_bs_tag, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @IMEM_SIZE, align 4
  %122 = call i32 @bus_space_unmap(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @fdtbus_bs_tag, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @PMU_SIZE, align 4
  %126 = call i32 @bus_space_unmap(i32 %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i64 @pmap_kextract(i32) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
