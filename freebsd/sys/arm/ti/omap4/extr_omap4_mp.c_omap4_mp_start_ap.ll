; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_mp.c_omap4_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_mp.c_omap4_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't map the SCU\0A\00", align 1
@MODIFY_AUX_CORE_0 = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@WRITE_AUX_CORE_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @fdtbus_bs_tag, align 4
  %5 = call i64 @bus_space_map(i32 %4, i32 1210318848, i32 4096, i32 0, i64* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load volatile i32, i32* %11, align 4
  %13 = or i32 %12, 1
  store volatile i32 %13, i32* %11, align 4
  %14 = call i32 (...) @dcache_wbinv_poc_all()
  %15 = load i32, i32* @MODIFY_AUX_CORE_0, align 4
  %16 = call i32 @ti_smc0(i32 512, i32 -513, i32 %15)
  %17 = load i64, i64* @mpentry, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @pmap_kextract(i32 %18)
  %20 = load i32, i32* @WRITE_AUX_CORE_1, align 4
  %21 = call i32 @ti_smc0(i32 %19, i32 0, i32 %20)
  %22 = call i32 (...) @dsb()
  %23 = call i32 (...) @sev()
  %24 = load i32, i32* @fdtbus_bs_tag, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @bus_space_unmap(i32 %24, i64 %25, i32 4096)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @ti_smc0(i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
