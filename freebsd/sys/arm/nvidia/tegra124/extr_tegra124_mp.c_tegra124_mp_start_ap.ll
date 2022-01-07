; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_mp.c_tegra124_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_mp.c_tegra124_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@PMC_PHYSBASE = common dso_local global i32 0, align 4
@PMC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't map the PMC\0A\00", align 1
@TEGRA_EXCEPTION_VECTORS_BASE = common dso_local global i32 0, align 4
@TEGRA_EXCEPTION_VECTORS_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't map the exception vectors\0A\00", align 1
@TEGRA_EXCEPTION_VECTOR_ENTRY = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@PMC_PWRGATE_TOGGLE = common dso_local global i32 0, align 4
@PCM_PWRGATE_TOGGLE_START = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@PMC_PWRGATE_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra124_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @fdtbus_bs_tag, align 4
  %9 = load i32, i32* @PMC_PHYSBASE, align 4
  %10 = load i32, i32* @PMC_SIZE, align 4
  %11 = call i64 @bus_space_map(i32 %8, i32 %9, i32 %10, i32 0, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @fdtbus_bs_tag, align 4
  %17 = load i32, i32* @TEGRA_EXCEPTION_VECTORS_BASE, align 4
  %18 = load i32, i32* @TEGRA_EXCEPTION_VECTORS_SIZE, align 4
  %19 = call i64 @bus_space_map(i32 %16, i32 %17, i32 %18, i32 0, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TEGRA_EXCEPTION_VECTOR_ENTRY, align 4
  %27 = load i64, i64* @mpentry, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @pmap_kextract(i32 %28)
  %30 = call i32 @bus_space_write_4(i32 %24, i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @fdtbus_bs_tag, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TEGRA_EXCEPTION_VECTOR_ENTRY, align 4
  %34 = call i32 @bus_space_read_4(i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %40, %23
  %36 = load i32, i32* @fdtbus_bs_tag, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %39 = call i32 @bus_space_read_4(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PCM_PWRGATE_TOGGLE_START, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %35, label %45

45:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %94, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @mp_ncpus, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %46
  %51 = load i32, i32* @fdtbus_bs_tag, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PMC_PWRGATE_STATUS, align 4
  %54 = call i32 @bus_space_read_4(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 8
  %57 = shl i32 1, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i32, i32* @fdtbus_bs_tag, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %67 = call i32 @bus_space_read_4(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCM_PWRGATE_TOGGLE_START, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %63, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @fdtbus_bs_tag, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %77 = load i32, i32* @PCM_PWRGATE_TOGGLE_START, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 8, %78
  %80 = or i32 %77, %79
  %81 = call i32 @bus_space_write_4(i32 %74, i32 %75, i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %87, %73
  %83 = load i32, i32* @fdtbus_bs_tag, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @PMC_PWRGATE_STATUS, align 4
  %86 = call i32 @bus_space_read_4(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %82, label %92

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %50
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %46

97:                                               ; preds = %46
  %98 = call i32 (...) @dsb()
  %99 = call i32 (...) @sev()
  %100 = load i32, i32* @fdtbus_bs_tag, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PMC_SIZE, align 4
  %103 = call i32 @bus_space_unmap(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @fdtbus_bs_tag, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @TEGRA_EXCEPTION_VECTORS_SIZE, align 4
  %107 = call i32 @bus_space_unmap(i32 %104, i32 %105, i32 %106)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
