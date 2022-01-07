; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_fill_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_fill_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@RK_I2C_TXDATA_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_i2c_softc*)* @rk_i2c_fill_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_i2c_fill_tx(%struct.rk_i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rk_i2c_softc* %0, %struct.rk_i2c_softc** %3, align 8
  %9 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %126

24:                                               ; preds = %13
  %25 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 8, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %24
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %121, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %124

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %98, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %101

46:                                               ; preds = %43
  %47 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %64 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  %73 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %74 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %91

75:                                               ; preds = %62, %57
  %76 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %77 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %82 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %5, align 4
  %87 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %88 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %75, %67
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 8
  %95 = shl i32 %92, %94
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %43

101:                                              ; preds = %56, %43
  %102 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %103 = load i64, i64* @RK_I2C_TXDATA_BASE, align 8
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 4, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %102, i64 %107, i32 %108)
  %110 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %111 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %3, align 8
  %114 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %112, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  br label %124

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %38

124:                                              ; preds = %119, %38
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %23
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @RK_I2C_WRITE(%struct.rk_i2c_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
