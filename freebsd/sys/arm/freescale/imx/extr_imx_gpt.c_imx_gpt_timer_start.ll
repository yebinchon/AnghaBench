; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64, i64 }
%struct.imx_gpt_softc = type { i32, i32 }

@IMX_GPT_OCR2 = common dso_local global i32 0, align 4
@IMX_GPT_CNT = common dso_local global i32 0, align 4
@GPT_IR_OF2 = common dso_local global i32 0, align 4
@IMX_GPT_IR = common dso_local global i32 0, align 4
@GPT_IR_OF3 = common dso_local global i32 0, align 4
@IMX_GPT_OCR3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @imx_gpt_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpt_timer_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eventtimer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_gpt_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %11 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.imx_gpt_softc*
  store %struct.imx_gpt_softc* %13, %struct.imx_gpt_softc** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %18 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = ashr i32 %22, 32
  %24 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %25 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %27 = load i32, i32* @IMX_GPT_OCR2, align 4
  %28 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %29 = load i32, i32* @IMX_GPT_CNT, align 4
  %30 = call i32 @READ4(%struct.imx_gpt_softc* %28, i32 %29)
  %31 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %32 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = call i32 @WRITE4(%struct.imx_gpt_softc* %26, i32 %27, i32 %34)
  %36 = load i32, i32* @GPT_IR_OF2, align 4
  %37 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %38 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %42 = load i32, i32* @IMX_GPT_IR, align 4
  %43 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %44 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WRITE4(%struct.imx_gpt_softc* %41, i32 %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %90

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %52 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GPT_IR_OF3, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i32, i32* @GPT_IR_OF3, align 4
  %59 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %60 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %64 = load i32, i32* @IMX_GPT_IR, align 4
  %65 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %66 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WRITE4(%struct.imx_gpt_softc* %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %50
  %70 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %71 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  %76 = ashr i32 %75, 32
  store i32 %76, i32* %9, align 4
  %77 = call i32 (...) @spinlock_enter()
  %78 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %79 = load i32, i32* @IMX_GPT_OCR3, align 4
  %80 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %8, align 8
  %81 = load i32, i32* @IMX_GPT_CNT, align 4
  %82 = call i32 @READ4(%struct.imx_gpt_softc* %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @WRITE4(%struct.imx_gpt_softc* %78, i32 %79, i32 %84)
  %86 = call i32 (...) @spinlock_exit()
  store i32 0, i32* %4, align 4
  br label %90

87:                                               ; preds = %47
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %69, %16
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @WRITE4(%struct.imx_gpt_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.imx_gpt_softc*, i32) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
