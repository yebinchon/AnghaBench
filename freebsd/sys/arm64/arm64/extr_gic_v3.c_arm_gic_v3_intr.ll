; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_arm_gic_v3_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_arm_gic_v3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.gic_v3_softc = type { i64, i32, %struct.gic_v3_irqsrc*, %struct.intr_pic* }
%struct.gic_v3_irqsrc = type { i64, i64, i32 }
%struct.intr_pic = type { i32 }

@CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 = common dso_local global i64 0, align 8
@IAR1 = common dso_local global i32 0, align 4
@GIC_FIRST_LPI = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@EOIR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SGI %ju on UP system detected\0A\00", align 1
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@GIC_FIRST_PPI = common dso_local global i64 0, align 8
@GIC_LAST_SPI = common dso_local global i64 0, align 8
@INTR_TRIGGER_EDGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Stray irq %lu disabled\0A\00", align 1
@sgi_to_ipi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_gic_v3_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca %struct.gic_v3_irqsrc*, align 8
  %5 = alloca %struct.intr_pic*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trapframe*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.gic_v3_softc*
  store %struct.gic_v3_softc* %9, %struct.gic_v3_softc** %3, align 8
  %10 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %10, i32 0, i32 3
  %12 = load %struct.intr_pic*, %struct.intr_pic** %11, align 8
  store %struct.intr_pic* %12, %struct.intr_pic** %5, align 8
  br label %13

13:                                               ; preds = %1, %25, %115
  %14 = load i64, i64* @CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i64 asm sideeffect "nop;nop;nop;nop;nop;nop;nop;nop;\09\0Amrs $0, ICC_IAR1_EL1\09\09\0Anop;nop;nop;nop;\09\09\09\0Adsb sy\09\09\09\09\0A", "=&r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %17, i64* %6, align 8
  br label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @IAR1, align 4
  %20 = call i64 @gic_icc_read(i32 %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @GIC_FIRST_LPI, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.intr_pic*, %struct.intr_pic** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @intr_child_irq_handler(%struct.intr_pic* %26, i64 %27)
  br label %13

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %32 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @__predict_false(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %39

40:                                               ; preds = %29
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.trapframe*, %struct.trapframe** %42, align 8
  store %struct.trapframe* %43, %struct.trapframe** %7, align 8
  %44 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %45 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %44, i32 0, i32 2
  %46 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %46, i64 %47
  store %struct.gic_v3_irqsrc* %48, %struct.gic_v3_irqsrc** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @GIC_LAST_SGI, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = load i32, i32* @EOIR1, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @gic_icc_write(i32 %53, i64 %54)
  %56 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %57 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @GIC_FIRST_SGI, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %115

63:                                               ; preds = %40
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @GIC_FIRST_PPI, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @GIC_LAST_SPI, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %73 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INTR_TRIGGER_EDGE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @EOIR1, align 4
  %79 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %80 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @gic_icc_write(i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %85 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %84, i32 0, i32 2
  %86 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %87 = call i64 @intr_isrc_dispatch(i32* %85, %struct.trapframe* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %91 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @INTR_TRIGGER_EDGE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* @EOIR1, align 4
  %97 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %98 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @gic_icc_write(i32 %96, i64 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %103 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %4, align 8
  %106 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %105, i32 0, i32 2
  %107 = call i32 @gic_v3_disable_intr(i32 %104, i32* %106)
  %108 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %109 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %101, %83
  br label %114

114:                                              ; preds = %113, %67, %63
  br label %115

115:                                              ; preds = %114, %52
  br label %13
}

declare dso_local i64 @gic_icc_read(i32) #1

declare dso_local i32 @intr_child_irq_handler(%struct.intr_pic*, i64) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @gic_icc_write(i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @gic_v3_disable_intr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1446, i32 1492, i32 1526, i32 1557}
