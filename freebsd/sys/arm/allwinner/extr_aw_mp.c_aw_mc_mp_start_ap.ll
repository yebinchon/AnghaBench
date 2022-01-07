; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mc_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mc_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"multiple clusters not yet supported\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@CPUCFG_P_REG0 = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @aw_mc_mp_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_mc_mp_start_ap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @mp_ncpus, align 4
  %10 = icmp sle i32 %9, 4
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @dcache_wbinv_poc_all()
  %14 = load i32, i32* @fdtbus_bs_tag, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CPUCFG_P_REG0, align 4
  %17 = load i64, i64* @mpentry, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @pmap_kextract(i32 %18)
  %20 = call i32 @bus_space_write_4(i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %32, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @mp_ncpus, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @aw_mc_mp_start_cpu(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %21

35:                                               ; preds = %21
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @aw_mc_mp_start_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
