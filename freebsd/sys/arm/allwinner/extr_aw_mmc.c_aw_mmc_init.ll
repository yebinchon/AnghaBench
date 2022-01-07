; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32 }

@AW_MMC_TMOR = common dso_local global i32 0, align 4
@AW_MMC_TMOR_DTO_LMT_MASK = common dso_local global i32 0, align 4
@AW_MMC_TMOR_RTO_LMT_MASK = common dso_local global i32 0, align 4
@AW_MMC_IMKR = common dso_local global i32 0, align 4
@AW_MMC_RISR = common dso_local global i32 0, align 4
@AW_MMC_DBGC = common dso_local global i32 0, align 4
@AW_MMC_FUNS = common dso_local global i32 0, align 4
@AW_MMC_IDST = common dso_local global i32 0, align 4
@AW_MMC_GCTL = common dso_local global i32 0, align 4
@AW_MMC_GCTL_INT_ENB = common dso_local global i32 0, align 4
@AW_MMC_GCTL_FIFO_AC_MOD = common dso_local global i32 0, align 4
@AW_MMC_GCTL_WAIT_MEM_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_mmc_softc*)* @aw_mmc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_init(%struct.aw_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %3, align 8
  %6 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %7 = call i32 @aw_mmc_reset(%struct.aw_mmc_softc* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %14 = load i32, i32* @AW_MMC_TMOR, align 4
  %15 = load i32, i32* @AW_MMC_TMOR_DTO_LMT_MASK, align 4
  %16 = call i32 @AW_MMC_TMOR_DTO_LMT_SHIFT(i32 %15)
  %17 = load i32, i32* @AW_MMC_TMOR_RTO_LMT_MASK, align 4
  %18 = call i32 @AW_MMC_TMOR_RTO_LMT_SHIFT(i32 %17)
  %19 = or i32 %16, %18
  %20 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %13, i32 %14, i32 %19)
  %21 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %22 = load i32, i32* @AW_MMC_IMKR, align 4
  %23 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %21, i32 %22, i32 0)
  %24 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %25 = load i32, i32* @AW_MMC_RISR, align 4
  %26 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %24, i32 %25, i32 -1)
  %27 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %28 = load i32, i32* @AW_MMC_DBGC, align 4
  %29 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %27, i32 %28, i32 3563)
  %30 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %31 = load i32, i32* @AW_MMC_FUNS, align 4
  %32 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %30, i32 %31, i32 -827719680)
  %33 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %34 = load i32, i32* @AW_MMC_IDST, align 4
  %35 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %33, i32 %34, i32 -1)
  %36 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %37 = load i32, i32* @AW_MMC_GCTL, align 4
  %38 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @AW_MMC_GCTL_INT_ENB, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @AW_MMC_GCTL_FIFO_AC_MOD, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @AW_MMC_GCTL_WAIT_MEM_ACCESS, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %51 = load i32, i32* @AW_MMC_GCTL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %50, i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %12, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @aw_mmc_reset(%struct.aw_mmc_softc*) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

declare dso_local i32 @AW_MMC_TMOR_DTO_LMT_SHIFT(i32) #1

declare dso_local i32 @AW_MMC_TMOR_RTO_LMT_SHIFT(i32) #1

declare dso_local i32 @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
