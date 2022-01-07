; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_do_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_do_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_gpt_softc = type { i32 }

@IMX_GPT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @imx_gpt_do_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_gpt_do_delay(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_gpt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.imx_gpt_softc*
  store %struct.imx_gpt_softc* %11, %struct.imx_gpt_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %5, align 8
  %14 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sdiv i32 %16, 1000000
  %18 = add nsw i32 1, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %5, align 8
  %20 = load i32, i32* @IMX_GPT_CNT, align 4
  %21 = call i32 @READ4(%struct.imx_gpt_softc* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %41, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %5, align 8
  %31 = load i32, i32* @IMX_GPT_CNT, align 4
  %32 = call i32 @READ4(%struct.imx_gpt_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4294967296
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %29
  br label %25

42:                                               ; preds = %25
  ret void
}

declare dso_local i32 @READ4(%struct.imx_gpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
