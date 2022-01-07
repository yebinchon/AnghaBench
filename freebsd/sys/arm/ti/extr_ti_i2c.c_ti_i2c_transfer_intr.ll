; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_transfer_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_transfer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_i2c_softc = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@I2C_STAT_NACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NACK\0A\00", align 1
@I2C_REG_STATUS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i8* null, align 8
@I2C_STAT_AL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Arbitration lost\0A\00", align 1
@I2C_STAT_ARDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ARDY transaction complete\0A\00", align 1
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@I2C_REG_CON = common dso_local global i32 0, align 4
@I2C_CON_STP = common dso_local global i32 0, align 4
@I2C_STAT_RDR = common dso_local global i32 0, align 4
@I2C_STAT_RRDY = common dso_local global i32 0, align 4
@I2C_STAT_XDR = common dso_local global i32 0, align 4
@I2C_STAT_XRDY = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Receive draining interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Receive data ready interrupt\0A\00", align 1
@I2C_REG_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Transmit draining interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Transmit data ready interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_i2c_softc*, i32)* @ti_i2c_transfer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_i2c_transfer_intr(%struct.ti_i2c_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_i2c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_i2c_softc* %0, %struct.ti_i2c_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @I2C_STAT_NACK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %15 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %17 = load i32, i32* @I2C_REG_STATUS, align 4
  %18 = load i32, i32* @I2C_STAT_NACK, align 4
  %19 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %16, i32 %17, i32 %18)
  %20 = load i8*, i8** @ENXIO, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @I2C_STAT_AL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %31 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %33 = load i32, i32* @I2C_REG_STATUS, align 4
  %34 = load i32, i32* @I2C_STAT_AL, align 4
  %35 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** @ENXIO, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %24
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @I2C_STAT_ARDY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %48 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IIC_M_NOSTOP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %64 = load i32, i32* @I2C_REG_CON, align 4
  %65 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_CON_STP, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %63, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %62, %53, %46
  %72 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %73 = load i32, i32* @I2C_REG_STATUS, align 4
  %74 = load i32, i32* @I2C_STAT_ARDY, align 4
  %75 = load i32, i32* @I2C_STAT_RDR, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @I2C_STAT_RRDY, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @I2C_STAT_XDR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @I2C_STAT_XRDY, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %72, i32 %73, i32 %82)
  store i32 1, i32* %3, align 4
  br label %263

84:                                               ; preds = %41
  %85 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IIC_M_RD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %177

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @I2C_STAT_RDR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %100 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %6, align 4
  br label %132

110:                                              ; preds = %93
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @I2C_STAT_RRDY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %117 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %122 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = call i32 @min(i32 %120, i32 %129)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %115, %110
  br label %132

132:                                              ; preds = %131, %98
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %153, %132
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %139 = load i32, i32* @I2C_REG_DATA, align 4
  %140 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %138, i32 %139)
  %141 = and i32 %140, 255
  %142 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  store i32 %141, i32* %152, align 4
  br label %153

153:                                              ; preds = %137
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %133

156:                                              ; preds = %133
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @I2C_STAT_RDR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %163 = load i32, i32* @I2C_REG_STATUS, align 4
  %164 = load i32, i32* @I2C_STAT_RDR, align 4
  %165 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @I2C_STAT_RRDY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %173 = load i32, i32* @I2C_REG_STATUS, align 4
  %174 = load i32, i32* @I2C_STAT_RRDY, align 4
  %175 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %171, %166
  br label %261

177:                                              ; preds = %84
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @I2C_STAT_XDR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %177
  %183 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %184 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %185 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %186 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %185, i32 0, i32 3
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %191 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  store i32 %193, i32* %6, align 4
  br label %216

194:                                              ; preds = %177
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @I2C_STAT_XRDY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %201 = call i32 @ti_i2c_dbg(%struct.ti_i2c_softc* %200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %202 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %203 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %206 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %205, i32 0, i32 3
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %211 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %209, %212
  %214 = call i32 @min(i32 %204, i32 %213)
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %199, %194
  br label %216

216:                                              ; preds = %215, %182
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %237, %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %217
  %222 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %223 = load i32, i32* @I2C_REG_DATA, align 4
  %224 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %225 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %224, i32 0, i32 3
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %230 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %222, i32 %223, i32 %235)
  br label %237

237:                                              ; preds = %221
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %217

240:                                              ; preds = %217
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @I2C_STAT_XDR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %247 = load i32, i32* @I2C_REG_STATUS, align 4
  %248 = load i32, i32* @I2C_STAT_XDR, align 4
  %249 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %240
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @I2C_STAT_XRDY, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %257 = load i32, i32* @I2C_REG_STATUS, align 4
  %258 = load i32, i32* @I2C_STAT_XRDY, align 4
  %259 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %256, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %255, %250
  br label %261

261:                                              ; preds = %260, %176
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %71
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @ti_i2c_dbg(%struct.ti_i2c_softc*, i8*) #1

declare dso_local i32 @ti_i2c_write_2(%struct.ti_i2c_softc*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ti_i2c_read_2(%struct.ti_i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
