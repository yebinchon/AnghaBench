; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init_microcode_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init_microcode_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32 }

@GLUELOGIC_KEEP_ASSERTED = common dso_local global i32 0, align 4
@GLUELOGIC_KEEP_NEGATED = common dso_local global i32 0, align 4
@OPCODE_WROD = common dso_local global i32 0, align 4
@TEMPLATE_STOP = common dso_local global i32 0, align 4
@DC_TEMPL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_softc*, i32, i32)* @ipu_init_microcode_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_init_microcode_template(%struct.ipu_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipu_softc* %0, %struct.ipu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 5
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %72, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @GLUELOGIC_KEEP_ASSERTED, align 4
  store i32 %24, i32* %12, align 4
  br label %36

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @GLUELOGIC_KEEP_NEGATED, align 4
  store i32 %29, i32* %12, align 4
  br label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = call i32 @TEMPLATE_SYNC(i32 5)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @TEMPLATE_GLUELOGIC(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @TEMPLATE_WAVEFORM(i32 1)
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @TEMPLATE_MAPPING(i32 %44)
  %46 = or i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @OPCODE_WROD, align 4
  %48 = call i32 @TEMPLATE_OPCODE(i32 %47)
  %49 = load i32, i32* @TEMPLATE_STOP, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @DC_TEMPL_BASE, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 %52, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @IPU_WRITE4(%struct.ipu_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.ipu_softc*, %struct.ipu_softc** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @IPU_WRITE4(%struct.ipu_softc* %65, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %36
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %17

75:                                               ; preds = %17
  ret void
}

declare dso_local i32 @TEMPLATE_SYNC(i32) #1

declare dso_local i32 @TEMPLATE_GLUELOGIC(i32) #1

declare dso_local i32 @TEMPLATE_WAVEFORM(i32) #1

declare dso_local i32 @TEMPLATE_MAPPING(i32) #1

declare dso_local i32 @TEMPLATE_OPCODE(i32) #1

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
