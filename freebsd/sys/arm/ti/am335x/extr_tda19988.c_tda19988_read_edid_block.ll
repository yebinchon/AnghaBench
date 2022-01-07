; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_read_edid_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_read_edid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i32 }

@TDA_INT_FLAGS_2 = common dso_local global i32 0, align 4
@INT_FLAGS_2_EDID_BLK_RD = common dso_local global i32 0, align 4
@TDA_DDC_ADDR = common dso_local global i32 0, align 4
@TDA_DDC_OFFS = common dso_local global i32 0, align 4
@TDA_DDC_SEGM_ADDR = common dso_local global i32 0, align 4
@TDA_DDC_SEGM = common dso_local global i32 0, align 4
@TDA_EDID_CTRL = common dso_local global i32 0, align 4
@MAX_READ_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EDID\00", align 1
@TDA_EDID_DATA0 = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*, i32*, i32)* @tda19988_read_edid_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_read_edid_block(%struct.tda19988_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tda19988_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %11 = load i32, i32* @TDA_INT_FLAGS_2, align 4
  %12 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %13 = call i32 @tda19988_reg_set(%struct.tda19988_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %15 = load i32, i32* @TDA_DDC_ADDR, align 4
  %16 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %14, i32 %15, i32 160)
  %17 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %18 = load i32, i32* @TDA_DDC_OFFS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = srem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 128, i32 0
  %24 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %17, i32 %18, i32 %23)
  %25 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %26 = load i32, i32* @TDA_DDC_SEGM_ADDR, align 4
  %27 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %25, i32 %26, i32 96)
  %28 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %29 = load i32, i32* @TDA_DDC_SEGM, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %28, i32 %29, i32 %31)
  %33 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %34 = load i32, i32* @TDA_EDID_CTRL, align 4
  %35 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %33, i32 %34, i32 1)
  %36 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %37 = load i32, i32* @TDA_EDID_CTRL, align 4
  %38 = call i32 @tda19988_reg_write(%struct.tda19988_softc* %36, i32 %37, i32 0)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %54, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX_READ_ATTEMPTS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %45 = load i32, i32* @TDA_INT_FLAGS_2, align 4
  %46 = call i32 @tda19988_reg_read(%struct.tda19988_softc* %44, i32 %45, i32* %9)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %57

52:                                               ; preds = %43
  %53 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %39

57:                                               ; preds = %51, %39
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MAX_READ_ATTEMPTS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %8, align 4
  br label %71

62:                                               ; preds = %57
  %63 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %64 = load i32, i32* @TDA_EDID_DATA0, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @EDID_LENGTH, align 4
  %67 = call i64 @tda19988_block_read(%struct.tda19988_softc* %63, i32 %64, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %8, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %69, %61
  %72 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %73 = load i32, i32* @TDA_INT_FLAGS_2, align 4
  %74 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %75 = call i32 @tda19988_reg_clear(%struct.tda19988_softc* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @tda19988_reg_set(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_write(%struct.tda19988_softc*, i32, i32) #1

declare dso_local i32 @tda19988_reg_read(%struct.tda19988_softc*, i32, i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @tda19988_block_read(%struct.tda19988_softc*, i32, i32*, i32) #1

declare dso_local i32 @tda19988_reg_clear(%struct.tda19988_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
