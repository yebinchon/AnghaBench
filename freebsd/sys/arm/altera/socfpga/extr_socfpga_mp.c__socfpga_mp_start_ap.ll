; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_mp.c__socfpga_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_mp.c__socfpga_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Unknown platform id %d\0A\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@RSTMGR_PHYSBASE = common dso_local global i32 0, align 4
@RSTMGR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't map the reset manager (RSTMGR)\0A\00", align 1
@RAM_PHYSBASE = common dso_local global i32 0, align 4
@RAM_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Couldn't map the first physram page\0A\00", align 1
@SCU_INV_TAGS_REG = common dso_local global i32 0, align 4
@SCU_DIAG_CONTROL = common dso_local global i32 0, align 4
@SCU_DIAG_DISABLE_MIGBIT = common dso_local global i32 0, align 4
@SCU_CONTROL_REG = common dso_local global i32 0, align 4
@SCU_CONTROL_ENABLE = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@mpentry_addr = common dso_local global i8* null, align 8
@socfpga_trampoline = common dso_local global i32 0, align 4
@SCU_SIZE = common dso_local global i32 0, align 4
@MPUMODRST_CPU1 = common dso_local global i32 0, align 4
@RSTMGR_A10_MPUMODRST = common dso_local global i32 0, align 4
@RSTMGR_MPUMODRST = common dso_local global i32 0, align 4
@SCU_PHYSBASE = common dso_local global i32 0, align 4
@SCU_PHYSBASE_A10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_socfpga_mp_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_socfpga_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %8 [
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @fdtbus_bs_tag, align 4
  %13 = load i32, i32* @RSTMGR_PHYSBASE, align 4
  %14 = load i32, i32* @RSTMGR_SIZE, align 4
  %15 = call i64 @bus_space_map(i32 %12, i32 %13, i32 %14, i32 0, i32* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, i32* @fdtbus_bs_tag, align 4
  %21 = load i32, i32* @RAM_PHYSBASE, align 4
  %22 = load i32, i32* @RAM_SIZE, align 4
  %23 = call i64 @bus_space_map(i32 %20, i32 %21, i32 %22, i32 0, i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* @fdtbus_bs_tag, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SCU_INV_TAGS_REG, align 4
  %31 = call i32 @bus_space_write_4(i32 %28, i32 %29, i32 %30, i32 65535)
  %32 = load i32, i32* @fdtbus_bs_tag, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SCU_DIAG_CONTROL, align 4
  %35 = call i32 @bus_space_read_4(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @SCU_DIAG_DISABLE_MIGBIT, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @fdtbus_bs_tag, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SCU_DIAG_CONTROL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @bus_space_write_4(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %2, align 4
  switch i32 %44, label %45 [
  ]

45:                                               ; preds = %27
  %46 = load i32, i32* %2, align 4
  %47 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @fdtbus_bs_tag, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SCU_CONTROL_REG, align 4
  %52 = call i32 @bus_space_read_4(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @SCU_CONTROL_ENABLE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @fdtbus_bs_tag, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SCU_CONTROL_REG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @bus_space_write_4(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i64, i64* @mpentry, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @pmap_kextract(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** @mpentry_addr, align 8
  %65 = load i32, i32* @fdtbus_bs_tag, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @bus_space_write_region_4(i32 %65, i32 %66, i32 0, i32* @socfpga_trampoline, i32 8)
  %68 = call i32 (...) @dcache_wbinv_poc_all()
  %69 = load i32, i32* %2, align 4
  switch i32 %69, label %70 [
  ]

70:                                               ; preds = %48
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70
  %74 = call i32 (...) @dsb()
  %75 = call i32 (...) @sev()
  %76 = load i32, i32* @fdtbus_bs_tag, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SCU_SIZE, align 4
  %79 = call i32 @bus_space_unmap(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @fdtbus_bs_tag, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @RSTMGR_SIZE, align 4
  %83 = call i32 @bus_space_unmap(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @fdtbus_bs_tag, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @RAM_SIZE, align 4
  %87 = call i32 @bus_space_unmap(i32 %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

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
