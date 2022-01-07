; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_dump_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_rng.c_bcm2835_rng_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_softc = type { i32 }
%struct.sbuf = type { i32 }

@RNG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RNG_CTRL (%08x)\0A\00", align 1
@RNG_COMBLK2_OSC = common dso_local global i32 0, align 4
@RNG_COMBLK2_OSC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"  RNG_COMBLK2_OSC (%02x)\0A\00", align 1
@RNG_NUM_OSCILLATORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"    Oscillator %d enabled\0A\00", align 1
@RNG_COMBLK1_OSC = common dso_local global i32 0, align 4
@RNG_COMBLK1_OSC_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"  RNG_COMBLK1_OSC (%02x)\0A\00", align 1
@RNG_JCLK_BYP_DIV_CNT = common dso_local global i32 0, align 4
@RNG_JCLK_BYP_DIV_CNT_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"  RNG_JCLK_BYP_DIV_CNT (%02x)\0A    APB clock frequency / %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  RNG_JCLK_BYP_SRC:\0A    %s\0A\00", align 1
@RNG_JCLK_BYP_SRC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Use divided down APB clock\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Use RNG clock (APB clock)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"  RNG_JCLK_BYP_SEL:\0A    %s\0A\00", align 1
@RNG_JCLK_BYP_SEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Bypass internal jitter clock\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Use internal jitter clock\00", align 1
@RNG_RBG2X = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"  RNG_RBG2X: RNG 2X SPEED enabled\0A\00", align 1
@RNG_RBGEN_BIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"  RNG_RBGEN_BIT: RBG enabled\0A\00", align 1
@RNG_STATUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"  RND_VAL: %02x\0A\00", align 1
@RND_VAL_SHIFT = common dso_local global i32 0, align 4
@RND_VAL_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"  RND_WARM_CNT: %05x\0A\00", align 1
@RND_WARM_CNT = common dso_local global i32 0, align 4
@RNG_FF_THRES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"RNG_FF_THRES: %05x\0A\00", align 1
@RNG_FF_THRES_MASK = common dso_local global i32 0, align 4
@RNG_INT_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"RNG_INT_MASK: interrupt %s\0A\00", align 1
@RNG_INT_OFF_BIT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_rng_softc*, %struct.sbuf*)* @bcm2835_rng_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_rng_dump_registers(%struct.bcm2835_rng_softc* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.bcm2835_rng_softc*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcm2835_rng_softc* %0, %struct.bcm2835_rng_softc** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %10 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %3, align 8
  %11 = load i32, i32* @RNG_CTRL, align 4
  %12 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RNG_COMBLK2_OSC, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @RNG_COMBLK2_OSC_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %40, %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @RNG_NUM_OSCILLATORS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RNG_COMBLK1_OSC, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @RNG_COMBLK1_OSC_SHIFT, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %68, %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @RNG_NUM_OSCILLATORS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @RNG_JCLK_BYP_DIV_CNT, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @RNG_JCLK_BYP_DIV_CNT_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 2, %80
  %82 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @RNG_JCLK_BYP_SRC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RNG_JCLK_BYP_SEL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)
  %98 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @RNG_RBG2X, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %71
  %104 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %105 = call i32 @sbuf_cat(%struct.sbuf* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %71
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @RNG_RBGEN_BIT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %113 = call i32 @sbuf_cat(%struct.sbuf* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %3, align 8
  %116 = load i32, i32* @RNG_STATUS, align 4
  %117 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @RND_VAL_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = load i32, i32* @RND_VAL_MASK, align 4
  %126 = and i32 %124, %125
  %127 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %126)
  %128 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @RND_WARM_CNT, align 4
  %131 = and i32 %129, %130
  %132 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %3, align 8
  %134 = load i32, i32* @RNG_FF_THRES, align 4
  %135 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @RNG_FF_THRES_MASK, align 4
  %139 = and i32 %137, %138
  %140 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %139)
  %141 = load %struct.bcm2835_rng_softc*, %struct.bcm2835_rng_softc** %3, align 8
  %142 = load i32, i32* @RNG_INT_MASK, align 4
  %143 = call i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @RNG_INT_OFF_BIT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)
  %151 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* %150)
  ret void
}

declare dso_local i32 @bcm2835_rng_read4(%struct.bcm2835_rng_softc*, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
