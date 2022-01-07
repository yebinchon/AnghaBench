; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_tbus_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_tbus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_NUM_LANES = common dso_local global i32 0, align 4
@AL_SERDES_25G_TBUS_OBJ_TOP = common dso_local global i32 0, align 4
@AL_SERDES_25G_TBUS_OBJ_CMU = common dso_local global i32 0, align 4
@AL_SERDES_25G_TBUS_OBJ_LANE = common dso_local global i32 0, align 4
@AL_SERDES_25G_TBUS_ADDR_HIGH_SHIFT = common dso_local global i32 0, align 4
@AL_SRDS_REG_PAGE_TOP = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_ADDR_7_0_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_ADDR_15_8_ADDR = common dso_local global i32 0, align 4
@AL_SERDES_25G_TBUS_DELAY = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_DATA_7_0_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_DATA_11_8_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_DATA_11_8_MASK = common dso_local global i32 0, align 4
@SERDES_25G_TOP_TBUS_DATA_11_8_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_serdes_grp_obj*, i32, i32, i32, i32*)* @al_serdes_25g_tbus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_serdes_25g_tbus_read(%struct.al_serdes_grp_obj* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.al_serdes_grp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AL_SRDS_NUM_LANES, align 4
  %16 = icmp ult i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @al_assert(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AL_SERDES_25G_TBUS_OBJ_TOP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @AL_SERDES_25G_TBUS_OBJ_TOP, align 4
  store i32 %23, i32* %11, align 4
  br label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AL_SERDES_25G_TBUS_OBJ_CMU, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AL_SERDES_25G_TBUS_OBJ_CMU, align 4
  store i32 %29, i32* %11, align 4
  br label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @AL_SERDES_25G_TBUS_OBJ_LANE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %28
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* @AL_SERDES_25G_TBUS_ADDR_HIGH_SHIFT, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %40 = load i32, i32* @AL_SRDS_REG_PAGE_TOP, align 4
  %41 = load i32, i32* @SERDES_25G_TOP_TBUS_ADDR_7_0_ADDR, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @al_serdes_25g_reg_write(%struct.al_serdes_grp_obj* %39, i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %45 = load i32, i32* @AL_SRDS_REG_PAGE_TOP, align 4
  %46 = load i32, i32* @SERDES_25G_TOP_TBUS_ADDR_15_8_ADDR, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @al_serdes_25g_reg_write(%struct.al_serdes_grp_obj* %44, i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load i32, i32* @AL_SERDES_25G_TBUS_DELAY, align 4
  %50 = call i32 @al_udelay(i32 %49)
  %51 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %52 = load i32, i32* @AL_SRDS_REG_PAGE_TOP, align 4
  %53 = load i32, i32* @SERDES_25G_TOP_TBUS_DATA_7_0_ADDR, align 4
  %54 = call i32 @al_serdes_25g_reg_read(%struct.al_serdes_grp_obj* %51, i32 %52, i32 0, i32 %53, i32* %13)
  %55 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %56 = load i32, i32* @AL_SRDS_REG_PAGE_TOP, align 4
  %57 = load i32, i32* @SERDES_25G_TOP_TBUS_DATA_11_8_ADDR, align 4
  %58 = load i32, i32* @SERDES_25G_TOP_TBUS_DATA_11_8_MASK, align 4
  %59 = load i32, i32* @SERDES_25G_TOP_TBUS_DATA_11_8_SHIFT, align 4
  %60 = call i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32* %12)
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_serdes_25g_reg_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32) #1

declare dso_local i32 @al_udelay(i32) #1

declare dso_local i32 @al_serdes_25g_reg_read(%struct.al_serdes_grp_obj*, i32, i32, i32, i32*) #1

declare dso_local i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
