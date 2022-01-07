; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacErrException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_MemacErrException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, i32 }

@MEMAC_ALL_ERRS_IMASK = common dso_local global i32 0, align 4
@MEMAC_IEVNT_TS_ECC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_TS_FIFO_ECC_ERR = common dso_local global i32 0, align 4
@MEMAC_IEVNT_TX_ECC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_1TX_ECC_ER = common dso_local global i32 0, align 4
@MEMAC_IEVNT_RX_ECC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_ECC_ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @MemacErrException to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MemacErrException(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @fman_memac_get_event(i32 %10, i32 -1)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @fman_memac_get_interrupt_mask(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MEMAC_ALL_ERRS_IMASK, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 16
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fman_memac_ack_event(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MEMAC_IEVNT_TS_ECC_ER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @e_FM_MAC_EX_TS_FIFO_ECC_ERR, align 4
  %39 = call i32 %34(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MEMAC_IEVNT_TX_ECC_ER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @e_FM_MAC_EX_10G_1TX_ECC_ER, align 4
  %53 = call i32 %48(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MEMAC_IEVNT_RX_ECC_ER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @e_FM_MAC_EX_10G_RX_ECC_ER, align 4
  %67 = call i32 %62(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @fman_memac_get_event(i32, i32) #1

declare dso_local i32 @fman_memac_get_interrupt_mask(i32) #1

declare dso_local i32 @fman_memac_ack_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
