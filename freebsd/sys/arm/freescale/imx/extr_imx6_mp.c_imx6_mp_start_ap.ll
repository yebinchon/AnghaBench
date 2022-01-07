; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_mp.c_imx6_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_mp.c_imx6_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@SCU_PHYSBASE = common dso_local global i32 0, align 4
@SCU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't map the SCU\0A\00", align 1
@SRC_PHYSBASE = common dso_local global i32 0, align 4
@SRC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Couldn't map the system reset controller (SRC)\0A\00", align 1
@SCU_INV_TAGS_REG = common dso_local global i64 0, align 8
@SCU_DIAG_CONTROL = common dso_local global i64 0, align 8
@SCU_DIAG_DISABLE_MIGBIT = common dso_local global i32 0, align 4
@SCU_CONTROL_REG = common dso_local global i64 0, align 8
@SCU_CONTROL_ENABLE = common dso_local global i32 0, align 4
@SRC_CONTROL_REG = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i32 0, align 4
@SRC_GPR0_C1FUNC = common dso_local global i64 0, align 8
@mpentry = common dso_local global i64 0, align 8
@SRC_GPR1_C1ARG = common dso_local global i64 0, align 8
@SRC_CONTROL_C1ENA_SHIFT = common dso_local global i32 0, align 4
@SRC_CONTROL_C1RST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx6_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @fdtbus_bs_tag, align 4
  %8 = load i32, i32* @SCU_PHYSBASE, align 4
  %9 = load i32, i32* @SCU_SIZE, align 4
  %10 = call i64 @bus_space_map(i32 %7, i32 %8, i32 %9, i32 0, i32* %3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @fdtbus_bs_tag, align 4
  %16 = load i32, i32* @SRC_PHYSBASE, align 4
  %17 = load i32, i32* @SRC_SIZE, align 4
  %18 = call i64 @bus_space_map(i32 %15, i32 %16, i32 %17, i32 0, i32* %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* @fdtbus_bs_tag, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* @SCU_INV_TAGS_REG, align 8
  %26 = call i32 @bus_space_write_4(i32 %23, i32 %24, i64 %25, i32 65535)
  %27 = load i32, i32* @fdtbus_bs_tag, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* @SCU_DIAG_CONTROL, align 8
  %30 = call i32 @bus_space_read_4(i32 %27, i32 %28, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @fdtbus_bs_tag, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* @SCU_DIAG_CONTROL, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SCU_DIAG_DISABLE_MIGBIT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @bus_space_write_4(i32 %31, i32 %32, i64 %33, i32 %36)
  %38 = load i32, i32* @fdtbus_bs_tag, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* @SCU_CONTROL_REG, align 8
  %41 = call i32 @bus_space_read_4(i32 %38, i32 %39, i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @fdtbus_bs_tag, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* @SCU_CONTROL_REG, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SCU_CONTROL_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @bus_space_write_4(i32 %42, i32 %43, i64 %44, i32 %47)
  %49 = call i32 (...) @dcache_wbinv_poc_all()
  %50 = load i32, i32* @fdtbus_bs_tag, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i64, i64* @SRC_CONTROL_REG, align 8
  %53 = call i32 @bus_space_read_4(i32 %50, i32 %51, i64 %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %91, %22
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @mp_ncpus, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i32, i32* @fdtbus_bs_tag, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* @SRC_GPR0_C1FUNC, align 8
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 8, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load i64, i64* @mpentry, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @pmap_kextract(i32 %67)
  %69 = call i32 @bus_space_write_4(i32 %59, i32 %60, i64 %65, i32 %68)
  %70 = load i32, i32* @fdtbus_bs_tag, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* @SRC_GPR1_C1ARG, align 8
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 8, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = call i32 @bus_space_write_4(i32 %70, i32 %71, i64 %76, i32 0)
  %78 = load i32, i32* @SRC_CONTROL_C1ENA_SHIFT, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  %82 = shl i32 1, %81
  %83 = load i32, i32* @SRC_CONTROL_C1RST_SHIFT, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = shl i32 1, %86
  %88 = or i32 %82, %87
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %58
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %54

94:                                               ; preds = %54
  %95 = load i32, i32* @fdtbus_bs_tag, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i64, i64* @SRC_CONTROL_REG, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @bus_space_write_4(i32 %95, i32 %96, i64 %97, i32 %98)
  %100 = call i32 (...) @dsb()
  %101 = call i32 (...) @sev()
  %102 = load i32, i32* @fdtbus_bs_tag, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @SCU_SIZE, align 4
  %105 = call i32 @bus_space_unmap(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @fdtbus_bs_tag, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @SRC_SIZE, align 4
  %109 = call i32 @bus_space_unmap(i32 %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i64, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i64) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
