; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mc_mp_start_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mc_mp_start_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@CPU_PWR_CLAMP_STEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @aw_mc_mp_start_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_mc_mp_start_cpu(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @fdtbus_bs_tag, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @CPUX_CL_RST(i32 %15)
  %17 = call i32 @bus_space_read_4(i32 %13, i32 %14, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @fdtbus_bs_tag, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @CPUX_CL_RST(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @bus_space_write_4(i32 %23, i32 %24, i32 %26, i32 %27)
  %29 = load i32, i32* @fdtbus_bs_tag, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @CPUS_CL_RST(i32 %31)
  %33 = call i32 @bus_space_read_4(i32 %29, i32 %30, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @fdtbus_bs_tag, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @CPUS_CL_RST(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @bus_space_write_4(i32 %39, i32 %40, i32 %42, i32 %43)
  %45 = load i32, i32* @fdtbus_bs_tag, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @CPUX_CL_CTRL0(i32 %47)
  %49 = call i32 @bus_space_read_4(i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @fdtbus_bs_tag, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @CPUX_CL_CTRL0(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @bus_space_write_4(i32 %55, i32 %56, i32 %58, i32 %59)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %74, %5
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @CPU_PWR_CLAMP_STEPS, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* @fdtbus_bs_tag, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @PRCM_CL_PWR_CLAMP(i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 255, %71
  %73 = call i32 @bus_space_write_4(i32 %66, i32 %67, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %61

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %86, %77
  %79 = load i32, i32* @fdtbus_bs_tag, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @PRCM_CL_PWR_CLAMP(i32 %81, i32 %82)
  %84 = call i32 @bus_space_read_4(i32 %79, i32 %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %78

87:                                               ; preds = %78
  %88 = load i32, i32* @fdtbus_bs_tag, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @PRCM_CL_PWROFF(i32 %90)
  %92 = call i32 @bus_space_read_4(i32 %88, i32 %89, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @fdtbus_bs_tag, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @PRCM_CL_PWROFF(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @bus_space_write_4(i32 %98, i32 %99, i32 %101, i32 %102)
  %104 = load i32, i32* @fdtbus_bs_tag, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @CPUS_CL_RST(i32 %106)
  %108 = call i32 @bus_space_read_4(i32 %104, i32 %105, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @fdtbus_bs_tag, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @CPUS_CL_RST(i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @bus_space_write_4(i32 %113, i32 %114, i32 %116, i32 %117)
  %119 = load i32, i32* @fdtbus_bs_tag, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @CPUX_CL_RST(i32 %121)
  %123 = call i32 @bus_space_read_4(i32 %119, i32 %120, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = shl i32 1, %124
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* @fdtbus_bs_tag, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @CPUX_CL_RST(i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @bus_space_write_4(i32 %128, i32 %129, i32 %131, i32 %132)
  ret void
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @CPUX_CL_RST(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @CPUS_CL_RST(i32) #1

declare dso_local i32 @CPUX_CL_CTRL0(i32) #1

declare dso_local i32 @PRCM_CL_PWR_CLAMP(i32, i32) #1

declare dso_local i32 @PRCM_CL_PWROFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
