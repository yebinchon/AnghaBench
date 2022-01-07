; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_ec_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_ec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_softc = type { i32 }
%struct.iic_msg = type { i32, i32, i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ec_sc = common dso_local global %struct.ec_softc* null, align 8
@EC_CMD_VERSION0 = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"i2c transfer returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_command(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ec_softc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x %struct.iic_msg], align 16
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 4
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call i32* @malloc(i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 3
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i32* @malloc(i32 %24, i32 %25, i32 %26)
  store i32* %27, i32** %14, align 8
  %28 = load %struct.ec_softc*, %struct.ec_softc** @ec_sc, align 8
  %29 = icmp eq %struct.ec_softc* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %134

31:                                               ; preds = %5
  %32 = load %struct.ec_softc*, %struct.ec_softc** @ec_sc, align 8
  store %struct.ec_softc* %32, %struct.ec_softc** %12, align 8
  %33 = load i32, i32* @EC_CMD_VERSION0, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %57, %31
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 3
  %64 = call i32 @fill_checksum(i32* %61, i32 %63)
  %65 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %17, i64 0, i64 0
  %66 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i32 0, i32 0
  store i32 30, i32* %66, align 8
  %67 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i32 0, i32 1
  %68 = load i32, i32* @IIC_M_WR, align 4
  store i32 %68, i32* %67, align 4
  %69 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i32 0, i32 2
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %69, align 8
  %74 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i32 0, i32 3
  %75 = load i32*, i32** %13, align 8
  %76 = ptrtoint i32* %75 to i32
  store i32 %76, i32* %74, align 8
  %77 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i64 1
  %78 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %77, i32 0, i32 0
  store i32 30, i32* %78, align 8
  %79 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %77, i32 0, i32 1
  %80 = load i32, i32* @IIC_M_RD, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %77, i32 0, i32 2
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %81, align 8
  %86 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %77, i32 0, i32 3
  %87 = load i32*, i32** %14, align 8
  %88 = ptrtoint i32* %87 to i32
  store i32 %88, i32* %86, align 8
  %89 = load %struct.ec_softc*, %struct.ec_softc** %12, align 8
  %90 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %17, i64 0, i64 0
  %93 = call i32 @iicbus_transfer(i32 %91, %struct.iic_msg* %92, i32 2)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %60
  %97 = load %struct.ec_softc*, %struct.ec_softc** %12, align 8
  %98 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = call i32 @free(i32* %102, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* @M_DEVBUF, align 4
  %107 = call i32 @free(i32* %105, i32 %106)
  store i32 -1, i32* %6, align 4
  br label %134

108:                                              ; preds = %60
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %109

127:                                              ; preds = %109
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* @M_DEVBUF, align 4
  %133 = call i32 @free(i32* %131, i32 %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %127, %96, %30
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @fill_checksum(i32*, i32) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
