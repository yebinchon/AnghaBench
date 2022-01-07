; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep_mp.c_alpine_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep_mp.c_alpine_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Couldn't resolve cpu_resume_base address\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't resolve_nb_base address\0A\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@al_devmap_pa = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't map CPU-resume area\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't map NB-service area\00", align 1
@AL_CPU_RESUME_WATERMARK_REG = common dso_local global i32 0, align 4
@AL_CPU_RESUME_MAGIC_NUM_MASK = common dso_local global i32 0, align 4
@AL_CPU_RESUME_MAGIC_NUM = common dso_local global i32 0, align 4
@AL_CPU_RESUME_MIN_VER_MASK = common dso_local global i32 0, align 4
@AL_CPU_RESUME_MIN_VER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"CPU-resume device is not compatible\00", align 1
@mpentry = common dso_local global i64 0, align 8
@AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME = common dso_local global i32 0, align 4
@AL_NB_INIT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alpine_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = call i64 @alpine_get_cpu_resume_base(i64* %7, i64* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = call i64 @alpine_get_nb_base(i64* %8, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i64, i64* @al_devmap_pa, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @bus_space_map(i32 %24, i64 %27, i64 %28, i32 0, i32* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* @fdtbus_bs_tag, align 4
  %35 = load i64, i64* @al_devmap_pa, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @bus_space_map(i32 %34, i64 %37, i64 %38, i32 0, i32* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* @fdtbus_bs_tag, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @AL_CPU_RESUME_WATERMARK_REG, align 4
  %47 = call i32 @bus_space_read_4(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AL_CPU_RESUME_MAGIC_NUM_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @AL_CPU_RESUME_MAGIC_NUM, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @AL_CPU_RESUME_MIN_VER_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @AL_CPU_RESUME_MIN_VER, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %43
  %60 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i64, i64* @mpentry, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @pmap_kextract(i64 %63)
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %99, %61
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (...) @platform_mp_get_core_cnt()
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65
  %70 = load i32, i32* @fdtbus_bs_tag, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @AL_NB_CONFIG_STATUS_PWR_CTRL(i32 %72)
  %74 = call i32 @bus_space_write_4(i32 %70, i32 %71, i32 %73, i32 0)
  %75 = call i32 (...) @mb()
  %76 = load i32, i32* @fdtbus_bs_tag, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @AL_CPU_RESUME_PCPU_FLAGS(i32 %78)
  %80 = call i32 @bus_space_read_4(i32 %76, i32 %77, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @AL_CPU_RESUME_FLG_PERCPU_DONT_RESUME, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @fdtbus_bs_tag, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @AL_CPU_RESUME_PCPU_FLAGS(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @bus_space_write_4(i32 %85, i32 %86, i32 %88, i32 %89)
  %91 = call i32 (...) @mb()
  %92 = load i32, i32* @fdtbus_bs_tag, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @AL_CPU_RESUME_PCPU_RADDR_REG(i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @bus_space_write_4(i32 %92, i32 %93, i32 %95, i32 %96)
  %98 = call i32 (...) @mb()
  br label %99

99:                                               ; preds = %69
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %65

102:                                              ; preds = %65
  %103 = load i32, i32* @fdtbus_bs_tag, align 4
  %104 = load i64, i64* @al_devmap_pa, align 8
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @bus_space_map(i32 %103, i64 %106, i64 %107, i32 0, i32* %12)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %102
  %113 = call i32 (...) @platform_mp_get_core_cnt()
  %114 = shl i32 1, %113
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @fdtbus_bs_tag, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @AL_NB_INIT_CONTROL, align 4
  %119 = call i32 @bus_space_read_4(i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @fdtbus_bs_tag, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @AL_NB_INIT_CONTROL, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @bus_space_write_4(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = call i32 (...) @dsb()
  %129 = load i32, i32* @fdtbus_bs_tag, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @bus_space_unmap(i32 %129, i32 %130, i64 %131)
  %133 = load i32, i32* @fdtbus_bs_tag, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @bus_space_unmap(i32 %133, i32 %134, i64 %135)
  ret void
}

declare dso_local i64 @alpine_get_cpu_resume_base(i64*, i64*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @alpine_get_nb_base(i64*, i64*) #1

declare dso_local i64 @bus_space_map(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @platform_mp_get_core_cnt(...) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @AL_NB_CONFIG_STATUS_PWR_CTRL(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @AL_CPU_RESUME_PCPU_FLAGS(i32) #1

declare dso_local i32 @AL_CPU_RESUME_PCPU_RADDR_REG(i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
