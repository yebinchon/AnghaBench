; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armadaxp/extr_armadaxp.c_armadaxp_l2_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armadaxp/extr_armadaxp.c_armadaxp_l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARMADAXP_L2_AUX_CTRL = common dso_local global i32 0, align 4
@L2_WBWT_MODE_MASK = common dso_local global i32 0, align 4
@L2_REP_STRAT_MASK = common dso_local global i32 0, align 4
@L2_REP_STRAT_SEMIPLRU = common dso_local global i32 0, align 4
@L2_WBWT_MODE_WT = common dso_local global i32 0, align 4
@ARMADAXP_L2_INT_CAUSE = common dso_local global i32 0, align 4
@ARMADAXP_L2_CTRL = common dso_local global i32 0, align 4
@L2_ENABLE = common dso_local global i32 0, align 4
@ARMADAXP_L2_CNTR_CTRL = common dso_local global i32 0, align 4
@COHER_FABRIC_CFU = common dso_local global i32 0, align 4
@COHER_FABRIC_CIB_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armadaxp_l2_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ARMADAXP_L2_AUX_CTRL, align 4
  %3 = call i32 @read_l2_cache(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @L2_WBWT_MODE_MASK, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @L2_REP_STRAT_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @L2_REP_STRAT_SEMIPLRU, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @L2_WBWT_MODE_WT, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @ARMADAXP_L2_AUX_CTRL, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @write_l2_cache(i32 %18, i32 %19)
  %21 = call i32 (...) @armadaxp_l2_idcache_inv_all()
  %22 = load i32, i32* @ARMADAXP_L2_INT_CAUSE, align 4
  %23 = call i32 @write_l2_cache(i32 %22, i32 511)
  %24 = load i32, i32* @ARMADAXP_L2_CTRL, align 4
  %25 = call i32 @read_l2_cache(i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @ARMADAXP_L2_CTRL, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @L2_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @write_l2_cache(i32 %26, i32 %29)
  %31 = call i32 @ARMADAXP_L2_CNTR_CONF(i32 0)
  %32 = call i32 @write_l2_cache(i32 %31, i32 983056)
  %33 = call i32 @ARMADAXP_L2_CNTR_CONF(i32 1)
  %34 = call i32 @write_l2_cache(i32 %33, i32 983048)
  %35 = load i32, i32* @ARMADAXP_L2_CNTR_CTRL, align 4
  %36 = call i32 @write_l2_cache(i32 %35, i32 771)
  %37 = load i32, i32* @COHER_FABRIC_CFU, align 4
  %38 = call i32 @read_coher_fabric(i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = or i32 %39, 393216
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @COHER_FABRIC_CFU, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @write_coher_fabric(i32 %41, i32 %42)
  %44 = load i32, i32* @COHER_FABRIC_CIB_CTRL, align 4
  %45 = call i32 @read_coher_fabric(i32 %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = and i32 %46, -458753
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = or i32 %48, 458752
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @COHER_FABRIC_CIB_CTRL, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @write_coher_fabric(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @read_l2_cache(i32) #1

declare dso_local i32 @write_l2_cache(i32, i32) #1

declare dso_local i32 @armadaxp_l2_idcache_inv_all(...) #1

declare dso_local i32 @ARMADAXP_L2_CNTR_CONF(i32) #1

declare dso_local i32 @read_coher_fabric(i32) #1

declare dso_local i32 @write_coher_fabric(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
