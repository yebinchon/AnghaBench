; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_ctl_pwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_ctl_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@AH_FALSE = common dso_local global i32 0, align 4
@OSPREY_NUM_CTLS_2G = common dso_local global i32 0, align 4
@OSPREY_NUM_BAND_EDGES_2G = common dso_local global i32 0, align 4
@OSPREY_NUM_CTLS_5G = common dso_local global i32 0, align 4
@OSPREY_NUM_BAND_EDGES_5G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_ctl_pwr(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %10)
  store %struct.ath_hal_9300* %11, %struct.ath_hal_9300** %6, align 8
  %12 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %13 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %12, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AH_FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @OSPREY_NUM_CTLS_2G, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @OSPREY_NUM_CTLS_2G, align 4
  %28 = load i32, i32* @OSPREY_NUM_BAND_EDGES_2G, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @OSPREY_NUM_CTLS_2G, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %30, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @OS_MEMCPY(i32* %25, i32* %26, i32 %35)
  %37 = load i32, i32* @OSPREY_NUM_CTLS_2G, align 4
  %38 = load i32, i32* @OSPREY_NUM_BAND_EDGES_2G, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* @OSPREY_NUM_CTLS_2G, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %40, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @OSPREY_NUM_CTLS_5G, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @OSPREY_NUM_CTLS_5G, align 4
  %58 = load i32, i32* @OSPREY_NUM_BAND_EDGES_5G, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* @OSPREY_NUM_CTLS_5G, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = add i64 %60, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @OS_MEMCPY(i32* %52, i32* %56, i32 %65)
  %67 = load i32, i32* @AH_FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %18, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
