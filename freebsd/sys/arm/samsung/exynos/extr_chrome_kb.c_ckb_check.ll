; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ckb_softc* }
%struct.ckb_softc = type { i32, i32, i64*, i64*, i64 }

@CKB_FLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ckb_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckb_check(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ckb_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.ckb_softc*, %struct.ckb_softc** %7, align 8
  store %struct.ckb_softc* %8, %struct.ckb_softc** %4, align 8
  %9 = call i32 (...) @CKB_CTX_LOCK_ASSERT()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_4__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CKB_FLAG_POLLING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %57

22:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %57

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %45, %21, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @CKB_CTX_LOCK_ASSERT(...) #1

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
