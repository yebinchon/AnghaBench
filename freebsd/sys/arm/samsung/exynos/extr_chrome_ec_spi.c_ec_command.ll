; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec_spi.c_ec_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec_spi.c_ec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_softc = type { i32 }
%struct.spi_command = type { i32*, i32*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ec_sc = common dso_local global %struct.ec_softc* null, align 8
@EC_CMD_VERSION0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"spibus_transfer returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_command(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_command, align 8
  %13 = alloca %struct.ec_softc*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = call i32 @memset(%struct.spi_command* %12, i32 0, i32 24)
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 4
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @malloc(i32 %20, i32 %21, i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 4
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @malloc(i32 %27, i32 %28, i32 %31)
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 1
  store i32* %35, i32** %36, align 8
  %37 = load %struct.ec_softc*, %struct.ec_softc** @ec_sc, align 8
  %38 = icmp eq %struct.ec_softc* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %184

40:                                               ; preds = %5
  %41 = load %struct.ec_softc*, %struct.ec_softc** @ec_sc, align 8
  store %struct.ec_softc* %41, %struct.ec_softc** %13, align 8
  %42 = load i32, i32* @EC_CMD_VERSION0, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %66, %40
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 3
  %73 = call i32 @fill_checksum(i32* %70, i32 %72)
  %74 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %75 = call i32 @assert_cs(%struct.ec_softc* %74, i32 1)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 4
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %81 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_get_parent(i32 %82)
  %84 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %85 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SPIBUS_TRANSFER(i32 %83, i32 %86, %struct.spi_command* %12)
  store i32 %87, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %111, %69
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 1000
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = call i32 @DELAY(i32 10)
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 255, i32* %94, align 4
  %95 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 3
  store i32 1, i32* %95, align 4
  %96 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %98 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @device_get_parent(i32 %99)
  %101 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %102 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SPIBUS_TRANSFER(i32 %100, i32 %103, %struct.spi_command* %12)
  %105 = load i32*, i32** %15, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 236
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %114

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %88

114:                                              ; preds = %109, %88
  store i32 0, i32* %17, align 4
  br label %115

115:                                              ; preds = %125, %114
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 4
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 255, i32* %124, align 4
  br label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %115

128:                                              ; preds = %115
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 4
  %131 = sub nsw i32 %130, 1
  %132 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %135 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_get_parent(i32 %136)
  %138 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %139 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @SPIBUS_TRANSFER(i32 %137, i32 %140, %struct.spi_command* %12)
  store i32 %141, i32* %16, align 4
  %142 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %143 = call i32 @assert_cs(%struct.ec_softc* %142, i32 0)
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %128
  %147 = load %struct.ec_softc*, %struct.ec_softc** %13, align 8
  %148 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* @M_DEVBUF, align 4
  %154 = call i32 @free(i32* %152, i32 %153)
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* @M_DEVBUF, align 4
  %157 = call i32 @free(i32* %155, i32 %156)
  store i32 -1, i32* %6, align 4
  br label %184

158:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %159

177:                                              ; preds = %159
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* @M_DEVBUF, align 4
  %180 = call i32 @free(i32* %178, i32 %179)
  %181 = load i32*, i32** %15, align 8
  %182 = load i32, i32* @M_DEVBUF, align 4
  %183 = call i32 @free(i32* %181, i32 %182)
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %177, %146, %39
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @memset(%struct.spi_command*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @fill_checksum(i32*, i32) #1

declare dso_local i32 @assert_cs(%struct.ec_softc*, i32) #1

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
