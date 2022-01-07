; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_gpt_softc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)*, i64 }

@IMX_GPT_SR = common dso_local global i32 0, align 4
@GPT_IR_OF3 = common dso_local global i32 0, align 4
@GPT_IR_OF2 = common dso_local global i32 0, align 4
@IMX_GPT_OCR2 = common dso_local global i32 0, align 4
@IMX_GPT_CNT = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @imx_gpt_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpt_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_gpt_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.imx_gpt_softc*
  store %struct.imx_gpt_softc* %6, %struct.imx_gpt_softc** %3, align 8
  %7 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %8 = load i32, i32* @IMX_GPT_SR, align 4
  %9 = call i32 @READ4(%struct.imx_gpt_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %11 = load i32, i32* @IMX_GPT_SR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @WRITE4(%struct.imx_gpt_softc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GPT_IR_OF3, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %20 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %27, align 8
  %29 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %29, i32 0, i32 1
  %31 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(%struct.TYPE_3__* %30, i32 %34)
  br label %36

36:                                               ; preds = %24, %18
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GPT_IR_OF2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %51, align 8
  %53 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %54 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %53, i32 0, i32 1
  %55 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %52(%struct.TYPE_3__* %54, i32 %58)
  br label %60

60:                                               ; preds = %48, %42
  %61 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %67 = load i32, i32* @IMX_GPT_OCR2, align 4
  %68 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %69 = load i32, i32* @IMX_GPT_CNT, align 4
  %70 = call i32 @READ4(%struct.imx_gpt_softc* %68, i32 %69)
  %71 = sext i32 %70 to i64
  %72 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %3, align 8
  %73 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @WRITE4(%struct.imx_gpt_softc* %66, i32 %67, i32 %76)
  br label %78

78:                                               ; preds = %65, %60
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %80
}

declare dso_local i32 @READ4(%struct.imx_gpt_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.imx_gpt_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
