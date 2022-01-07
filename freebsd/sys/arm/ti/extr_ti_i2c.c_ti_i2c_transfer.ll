; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i32* }
%struct.ti_i2c_softc = type { i32, i32, i32, %struct.iic_msg*, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"i2cbuswait\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_REG_STATUS_RAW = common dso_local global i32 0, align 4
@I2C_STAT_BB = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@I2C_REG_SA = common dso_local global i32 0, align 4
@I2C_REG_CNT = common dso_local global i32 0, align 4
@I2C_REG_BUF = common dso_local global i32 0, align 4
@I2C_BUF_RXFIFO_CLR = common dso_local global i32 0, align 4
@I2C_BUF_TXFIFO_CLR = common dso_local global i32 0, align 4
@I2C_CON_STT = common dso_local global i32 0, align 4
@I2C_CON_STP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@I2C_CON_TRX = common dso_local global i32 0, align 4
@I2C_REG_CON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"i2ciowait\00", align 1
@I2C_CON_MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @ti_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_i2c_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ti_i2c_softc*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ti_i2c_softc* @device_get_softc(i32 %13)
  store %struct.ti_i2c_softc* %14, %struct.ti_i2c_softc** %11, align 8
  %15 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %16 = call i32 @TI_I2C_LOCK(%struct.ti_i2c_softc* %15)
  br label %17

17:                                               ; preds = %22, %3
  %18 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %19 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %24 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %25 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %24, i32 0, i32 5
  %26 = call i32 @mtx_sleep(%struct.ti_i2c_softc* %23, i32* %25, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %17

27:                                               ; preds = %17
  %28 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %29 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %174, %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %177

34:                                               ; preds = %30
  %35 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %35, i64 %37
  %39 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %40 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %39, i32 0, i32 3
  store %struct.iic_msg* %38, %struct.iic_msg** %40, align 8
  %41 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %42 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %44 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %46 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %45, i32 0, i32 3
  %47 = load %struct.iic_msg*, %struct.iic_msg** %46, align 8
  %48 = icmp eq %struct.iic_msg* %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %34
  %50 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %51 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %50, i32 0, i32 3
  %52 = load %struct.iic_msg*, %struct.iic_msg** %51, align 8
  %53 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %58 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %57, i32 0, i32 3
  %59 = load %struct.iic_msg*, %struct.iic_msg** %58, align 8
  %60 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56, %49, %34
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %7, align 4
  br label %177

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %71 = load i32, i32* @I2C_REG_STATUS_RAW, align 4
  %72 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %70, i32 %71)
  %73 = load i32, i32* @I2C_STAT_BB, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = icmp sgt i32 %77, 100
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EBUSY, align 4
  store i32 %81, i32* %7, align 4
  br label %178

82:                                               ; preds = %76
  %83 = call i32 @DELAY(i32 1000)
  br label %69

84:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %86

85:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %88 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %87, i32 0, i32 3
  %89 = load %struct.iic_msg*, %struct.iic_msg** %88, align 8
  %90 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IIC_M_NOSTOP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %98 = load i32, i32* @I2C_REG_SA, align 4
  %99 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %99, i64 %101
  %103 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 1
  %106 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %97, i32 %98, i32 %105)
  %107 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %108 = load i32, i32* @I2C_REG_CNT, align 4
  %109 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %110 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %109, i32 0, i32 3
  %111 = load %struct.iic_msg*, %struct.iic_msg** %110, align 8
  %112 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %107, i32 %108, i32 %113)
  %115 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %116 = load i32, i32* @I2C_REG_BUF, align 4
  %117 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* @I2C_BUF_RXFIFO_CLR, align 4
  %119 = load i32, i32* @I2C_BUF_TXFIFO_CLR, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %124 = load i32, i32* @I2C_REG_BUF, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %128 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @I2C_CON_STT, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %96
  %135 = load i32, i32* @I2C_CON_STP, align 4
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %96
  %139 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %140 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %139, i32 0, i32 3
  %141 = load %struct.iic_msg*, %struct.iic_msg** %140, align 8
  %142 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IIC_M_RD, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load i32, i32* @I2C_CON_TRX, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %138
  %152 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %153 = load i32, i32* @I2C_REG_CON, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %152, i32 %153, i32 %154)
  %156 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %157 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %158 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %157, i32 0, i32 5
  %159 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %160 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @mtx_sleep(%struct.ti_i2c_softc* %156, i32* %158, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %167 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %165, %151
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %177

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %30

177:                                              ; preds = %172, %63, %30
  br label %178

178:                                              ; preds = %177, %80
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %194, %181
  %183 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %184 = load i32, i32* @I2C_REG_STATUS_RAW, align 4
  %185 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %183, i32 %184)
  %186 = load i32, i32* @I2C_STAT_BB, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = icmp sgt i32 %190, 100
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %196

194:                                              ; preds = %189
  %195 = call i32 @DELAY(i32 1000)
  br label %182

196:                                              ; preds = %193, %182
  br label %197

197:                                              ; preds = %196, %178
  %198 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %199 = load i32, i32* @I2C_REG_CON, align 4
  %200 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %198, i32 %199)
  %201 = load i32, i32* @I2C_CON_MST, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %206 = load i32, i32* @I2C_REG_CON, align 4
  %207 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %208 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %205, i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %204, %197
  %212 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %213 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %212, i32 0, i32 3
  store %struct.iic_msg* null, %struct.iic_msg** %213, align 8
  %214 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %215 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  %216 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %217 = call i32 @wakeup(%struct.ti_i2c_softc* %216)
  %218 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %11, align 8
  %219 = call i32 @TI_I2C_UNLOCK(%struct.ti_i2c_softc* %218)
  %220 = load i32, i32* %7, align 4
  ret i32 %220
}

declare dso_local %struct.ti_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @TI_I2C_LOCK(%struct.ti_i2c_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.ti_i2c_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @ti_i2c_read_2(%struct.ti_i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ti_i2c_write_2(%struct.ti_i2c_softc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.ti_i2c_softc*) #1

declare dso_local i32 @TI_I2C_UNLOCK(%struct.ti_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
