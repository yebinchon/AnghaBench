; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_keymap_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_keymap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ckb_softc = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"keymap_read: no keymap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ckb_softc*, i32, i32)* @keymap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keymap_read(%struct.ckb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ckb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ckb_softc* %0, %struct.ckb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ckb_softc*, %struct.ckb_softc** %5, align 8
  %9 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ckb_softc*, %struct.ckb_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ckb_softc*, %struct.ckb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.ckb_softc*, %struct.ckb_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ckb_softc*, %struct.ckb_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %25, %22, %16, %3
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
