; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32*, i32, i32, i32 }
%struct.rk_i2c_softc = type { i32, i64, i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"i2cbuswait\00", align 1
@RK_I2C_CON = common dso_local global i32 0, align 4
@RK_I2C_IEN = common dso_local global i32 0, align 4
@RK_I2C_IPD = common dso_local global i32 0, align 4
@RK_I2C_IPD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_RRX = common dso_local global i8* null, align 8
@RK_I2C_MRXADDR = common dso_local global i32 0, align 4
@RK_I2C_MRXRADDR = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_RX = common dso_local global i8* null, align 8
@RK_I2C_CON_MODE_TX = common dso_local global i8* null, align 8
@cold = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rk_i2c\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @rk_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_i2c_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk_i2c_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.rk_i2c_softc* @device_get_softc(i32 %14)
  store %struct.rk_i2c_softc* %15, %struct.rk_i2c_softc** %7, align 8
  %16 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %17 = call i32 @RK_I2C_LOCK(%struct.rk_i2c_softc* %16)
  br label %18

18:                                               ; preds = %23, %3
  %19 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %20 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %25 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %26 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %25, i32 0, i32 2
  %27 = call i32 @mtx_sleep(%struct.rk_i2c_softc* %24, i32* %26, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %18

28:                                               ; preds = %18
  %29 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %30 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %32 = load i32, i32* @RK_I2C_CON, align 4
  %33 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %31, i32 %32, i32 0)
  %34 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %35 = load i32, i32* @RK_I2C_IEN, align 4
  %36 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %34, i32 %35, i32 0)
  %37 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %38 = load i32, i32* @RK_I2C_IPD, align 4
  %39 = load i32, i32* @RK_I2C_IPD_ALL, align 4
  %40 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %37, i32 %38, i32 %39)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %359, %28
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %362

45:                                               ; preds = %41
  %46 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %47 = icmp eq %struct.iic_msg* %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %48, %45
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %13, align 4
  br label %362

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %66
  %72 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %72, i64 %75
  %77 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IIC_M_NOSTART, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %71
  %83 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %83, i64 %85
  %87 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IIC_M_RD, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %91, i64 %94
  %96 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IIC_M_RD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %90, %99
  br i1 %100, label %116, label %101

101:                                              ; preds = %82
  %102 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %102, i64 %104
  %106 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %108, i64 %111
  %113 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %107, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %101, %82
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %13, align 4
  br label %362

118:                                              ; preds = %101, %71
  br label %119

119:                                              ; preds = %118, %66
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %120, %121
  %123 = icmp sge i32 %122, 2
  br i1 %123, label %124, label %234

124:                                              ; preds = %119
  %125 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %125, i64 %127
  %129 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %234

132:                                              ; preds = %124
  %133 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %133, i64 %135
  %137 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IIC_M_WR, align 4
  %140 = load i32, i32* @IIC_M_NOSTOP, align 4
  %141 = or i32 %139, %140
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %234

143:                                              ; preds = %132
  %144 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %144, i64 %147
  %149 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IIC_M_RD, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %234

153:                                              ; preds = %143
  %154 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %154, i64 %156
  %158 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @LSB, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  %163 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %163, i64 %166
  %168 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @LSB, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = icmp eq i32 %162, %172
  br i1 %173, label %174, label %234

174:                                              ; preds = %153
  %175 = load i8*, i8** @RK_I2C_CON_MODE_RRX, align 8
  %176 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %177 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %178, i64 %180
  %182 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @LSB, align 4
  %185 = xor i32 %184, -1
  %186 = and i32 %183, %185
  store i32 %186, i32* %8, align 4
  %187 = call i32 @RK_I2C_MRXADDR_VALID(i32 0)
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %191 = load i32, i32* @RK_I2C_MRXADDR, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %190, i32 %191, i32 %192)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %224, %174
  %195 = load i32, i32* %11, align 4
  %196 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %196, i64 %198
  %200 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %195, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %194
  %204 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %204, i64 %206
  %208 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 255
  %215 = load i32, i32* %11, align 4
  %216 = mul nsw i32 %215, 8
  %217 = shl i32 %214, %216
  %218 = load i32, i32* %8, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @RK_I2C_MRXADDR_VALID(i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %203
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %194

227:                                              ; preds = %194
  %228 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %229 = load i32, i32* @RK_I2C_MRXRADDR, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %228, i32 %229, i32 %230)
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  br label %286

234:                                              ; preds = %153, %143, %132, %124, %119
  %235 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %235, i64 %237
  %239 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @IIC_M_RD, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %234
  %245 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %245, i64 %247
  %249 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @IIC_M_NOSTART, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %244
  %255 = load i8*, i8** @RK_I2C_CON_MODE_RX, align 8
  %256 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %257 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %256, i32 0, i32 3
  store i8* %255, i8** %257, align 8
  br label %280

258:                                              ; preds = %244
  %259 = load i8*, i8** @RK_I2C_CON_MODE_RRX, align 8
  %260 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %261 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %260, i32 0, i32 3
  store i8* %259, i8** %261, align 8
  %262 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %262, i64 %264
  %266 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @LSB, align 4
  %269 = and i32 %267, %268
  store i32 %269, i32* %8, align 4
  %270 = call i32 @RK_I2C_MRXADDR_VALID(i32 0)
  %271 = load i32, i32* %8, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %8, align 4
  %273 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %274 = load i32, i32* @RK_I2C_MRXADDR, align 4
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %273, i32 %274, i32 %275)
  %277 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %278 = load i32, i32* @RK_I2C_MRXRADDR, align 4
  %279 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %277, i32 %278, i32 0)
  br label %280

280:                                              ; preds = %258, %254
  br label %285

281:                                              ; preds = %234
  %282 = load i8*, i8** @RK_I2C_CON_MODE_TX, align 8
  %283 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %284 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %283, i32 0, i32 3
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %280
  br label %286

286:                                              ; preds = %285, %227
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* %6, align 4
  %289 = sub nsw i32 %288, 1
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %303, label %291

291:                                              ; preds = %286
  %292 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %292, i64 %295
  %297 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @IIC_M_NOSTART, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  br label %303

303:                                              ; preds = %291, %286
  %304 = phi i1 [ true, %286 ], [ %302, %291 ]
  %305 = zext i1 %304 to i32
  store i32 %305, i32* %9, align 4
  %306 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %307 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %307, i64 %309
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @rk_i2c_start_xfer(%struct.rk_i2c_softc* %306, %struct.iic_msg* %310, i32 %311)
  %313 = load i64, i64* @cold, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %338

315:                                              ; preds = %303
  store i32 10000, i32* %12, align 4
  br label %316

316:                                              ; preds = %329, %315
  %317 = load i32, i32* %12, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %316
  %320 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %321 = call i32 @rk_i2c_intr_locked(%struct.rk_i2c_softc* %320)
  %322 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %323 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %332

327:                                              ; preds = %319
  %328 = call i32 @DELAY(i32 100)
  br label %329

329:                                              ; preds = %327
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %12, align 4
  br label %316

332:                                              ; preds = %326, %316
  %333 = load i32, i32* %12, align 4
  %334 = icmp sle i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %335, %332
  br label %358

338:                                              ; preds = %303
  br label %339

339:                                              ; preds = %349, %338
  %340 = load i32, i32* %13, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %344 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 1
  br label %347

347:                                              ; preds = %342, %339
  %348 = phi i1 [ false, %339 ], [ %346, %342 ]
  br i1 %348, label %349, label %357

349:                                              ; preds = %347
  %350 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %351 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %352 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %351, i32 0, i32 2
  %353 = load i32, i32* @PZERO, align 4
  %354 = load i32, i32* @hz, align 4
  %355 = mul nsw i32 10, %354
  %356 = call i32 @msleep(%struct.rk_i2c_softc* %350, i32* %352, i32 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %355)
  store i32 %356, i32* %13, align 4
  br label %339

357:                                              ; preds = %347
  br label %358

358:                                              ; preds = %357, %337
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %41

362:                                              ; preds = %116, %64, %41
  %363 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %364 = load i32, i32* @RK_I2C_CON, align 4
  %365 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %363, i32 %364, i32 0)
  %366 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %367 = load i32, i32* @RK_I2C_IEN, align 4
  %368 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %366, i32 %367, i32 0)
  %369 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %370 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %369, i32 0, i32 0
  store i32 0, i32* %370, align 8
  %371 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %7, align 8
  %372 = call i32 @RK_I2C_UNLOCK(%struct.rk_i2c_softc* %371)
  %373 = load i32, i32* %13, align 4
  ret i32 %373
}

declare dso_local %struct.rk_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @RK_I2C_LOCK(%struct.rk_i2c_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.rk_i2c_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @RK_I2C_WRITE(%struct.rk_i2c_softc*, i32, i32) #1

declare dso_local i32 @RK_I2C_MRXADDR_VALID(i32) #1

declare dso_local i32 @rk_i2c_start_xfer(%struct.rk_i2c_softc*, %struct.iic_msg*, i32) #1

declare dso_local i32 @rk_i2c_intr_locked(%struct.rk_i2c_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @msleep(%struct.rk_i2c_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @RK_I2C_UNLOCK(%struct.rk_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
