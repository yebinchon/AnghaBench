; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_bist_rx_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_bist_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RXBIST_RXLOCKED_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RXBIST_ERRCOUNT_MSB_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RXBIST_ERRCOUNT_LSB_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RXBIST_RXLOCKED = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RXBIST_ERRCOUNT_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i32, i32*, i32*, i32*)* @al_serdes_bist_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_bist_rx_status(%struct.al_serdes_grp_obj* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.al_serdes_grp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %17 = load i32, i32* @SERDES_IREG_FLD_RXBIST_RXLOCKED_REG_NUM, align 4
  %18 = call i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %22 = load i32, i32* @SERDES_IREG_FLD_RXBIST_ERRCOUNT_MSB_REG_NUM, align 4
  %23 = call i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %27 = load i32, i32* @SERDES_IREG_FLD_RXBIST_ERRCOUNT_LSB_REG_NUM, align 4
  %28 = call i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SERDES_IREG_FLD_RXBIST_RXLOCKED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @AL_TRUE, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @AL_FALSE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @SERDES_IREG_FLD_RXBIST_ERRCOUNT_OVERFLOW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @AL_TRUE, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @AL_FALSE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  ret void
}

declare dso_local i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
