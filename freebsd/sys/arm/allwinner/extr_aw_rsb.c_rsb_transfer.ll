; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i32 }
%struct.rsb_softc = type { i64, i32, i32, i32*, i64, i32 }

@IIC_M_RD = common dso_local global i32 0, align 4
@RSB_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A23_RSB = common dso_local global i64 0, align 8
@CMD_RD8 = common dso_local global i32 0, align 4
@CMD_RD16 = common dso_local global i32 0, align 4
@CMD_RD32 = common dso_local global i32 0, align 4
@CMD_WR8 = common dso_local global i32 0, align 4
@CMD_WR16 = common dso_local global i32 0, align 4
@CMD_WR32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i2cbuswait\00", align 1
@RSB_INTS = common dso_local global i32 0, align 4
@RSB_DADDR0 = common dso_local global i32 0, align 4
@RSB_DATA0 = common dso_local global i32 0, align 4
@RSB_CMD = common dso_local global i32 0, align 4
@DLEN_READ = common dso_local global i32 0, align 4
@RSB_DLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @rsb_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsb_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsb_softc*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.rsb_softc* @device_get_softc(i32 %15)
  store %struct.rsb_softc* %16, %struct.rsb_softc** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %53, label %19

19:                                               ; preds = %3
  %20 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %20, i64 0
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IIC_M_RD, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IIC_M_RD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %53, label %28

28:                                               ; preds = %19
  %29 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i64 0
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 1
  %34 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i64 1
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 1
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %28
  %41 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i64 0
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %48 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %47, i64 1
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RSB_MAXLEN, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %40, %28, %19, %3
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %266

55:                                               ; preds = %46
  %56 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %57 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @A23_RSB, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %55
  %62 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %63 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %62, i64 1
  %64 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IIC_M_RD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %71 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %70, i64 1
  %72 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %80 [
    i32 1, label %74
    i32 2, label %76
    i32 4, label %78
  ]

74:                                               ; preds = %69
  %75 = load i32, i32* @CMD_RD8, align 4
  store i32 %75, i32* %13, align 4
  br label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @CMD_RD16, align 4
  store i32 %77, i32* %13, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @CMD_RD32, align 4
  store i32 %79, i32* %13, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %4, align 4
  br label %266

82:                                               ; preds = %78, %76, %74
  br label %97

83:                                               ; preds = %61
  %84 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %85 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %84, i64 1
  %86 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %94 [
    i32 1, label %88
    i32 2, label %90
    i32 4, label %92
  ]

88:                                               ; preds = %83
  %89 = load i32, i32* @CMD_WR8, align 4
  store i32 %89, i32* %13, align 4
  br label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @CMD_WR16, align 4
  store i32 %91, i32* %13, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @CMD_WR32, align 4
  store i32 %93, i32* %13, align 4
  br label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %4, align 4
  br label %266

96:                                               ; preds = %92, %90, %88
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %55
  %99 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %100 = call i32 @RSB_LOCK(%struct.rsb_softc* %99)
  br label %101

101:                                              ; preds = %106, %98
  %102 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %103 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %108 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %109 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %108, i32 0, i32 5
  %110 = call i32 @mtx_sleep(%struct.rsb_softc* %107, i32* %109, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %101

111:                                              ; preds = %101
  %112 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %113 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %115 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %117 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @A23_RSB, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %111
  %122 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %123 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %122, i64 0
  %124 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 1
  store i32 %126, i32* %12, align 4
  %127 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %128 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %121
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @rsb_set_rta(i32 %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %256

139:                                              ; preds = %132
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %142 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %144 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %121
  br label %146

146:                                              ; preds = %145, %111
  %147 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %148 = load i32, i32* @RSB_INTS, align 4
  %149 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %150 = load i32, i32* @RSB_INTS, align 4
  %151 = call i32 @RSB_READ(%struct.rsb_softc* %149, i32 %150)
  %152 = call i32 @RSB_WRITE(%struct.rsb_softc* %147, i32 %148, i32 %151)
  %153 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %154 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %153, i64 0
  %155 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %158 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %157, i64 0
  %159 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rsb_encode(i32 %156, i32 %160, i32 0)
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %161, i32* %162, align 4
  %163 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %164 = load i32, i32* @RSB_DADDR0, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @RSB_WRITE(%struct.rsb_softc* %163, i32 %164, i32 %166)
  %168 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %169 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %168, i64 1
  %170 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IIC_M_RD, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %146
  %176 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %177 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %176, i64 1
  %178 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %181 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %180, i64 1
  %182 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @rsb_encode(i32 %179, i32 %183, i32 0)
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %184, i32* %185, align 4
  %186 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %187 = load i32, i32* @RSB_DATA0, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @RSB_WRITE(%struct.rsb_softc* %186, i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %175, %146
  %192 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %193 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @A23_RSB, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %199 = load i32, i32* @RSB_CMD, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @RSB_WRITE(%struct.rsb_softc* %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %191
  %203 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %204 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %203, i64 0
  %205 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  %208 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %209 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %208, i64 1
  %210 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @IIC_M_RD, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* @IIC_M_RD, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %202
  %217 = load i32, i32* @DLEN_READ, align 4
  %218 = load i32, i32* %11, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %216, %202
  %221 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %222 = load i32, i32* @RSB_DLEN, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @RSB_WRITE(%struct.rsb_softc* %221, i32 %222, i32 %223)
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @rsb_start(i32 %225)
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %220
  br label %256

230:                                              ; preds = %220
  %231 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %232 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %231, i64 1
  %233 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IIC_M_RD, align 4
  %236 = and i32 %234, %235
  %237 = load i32, i32* @IIC_M_RD, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %230
  %240 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %241 = load i32, i32* @RSB_DATA0, align 4
  %242 = call i32 @RSB_READ(%struct.rsb_softc* %240, i32 %241)
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %242, i32* %243, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %247 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %246, i64 1
  %248 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %251 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %250, i64 1
  %252 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @rsb_decode(i32 %245, i32 %249, i32 %253, i32 0)
  br label %255

255:                                              ; preds = %239, %230
  br label %256

256:                                              ; preds = %255, %229, %138
  %257 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %258 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %257, i32 0, i32 3
  store i32* null, i32** %258, align 8
  %259 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %260 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %259, i32 0, i32 1
  store i32 0, i32* %260, align 8
  %261 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %262 = call i32 @wakeup(%struct.rsb_softc* %261)
  %263 = load %struct.rsb_softc*, %struct.rsb_softc** %8, align 8
  %264 = call i32 @RSB_UNLOCK(%struct.rsb_softc* %263)
  %265 = load i32, i32* %14, align 4
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %256, %94, %80, %53
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local %struct.rsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @RSB_LOCK(%struct.rsb_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.rsb_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @rsb_set_rta(i32, i32) #1

declare dso_local i32 @RSB_WRITE(%struct.rsb_softc*, i32, i32) #1

declare dso_local i32 @RSB_READ(%struct.rsb_softc*, i32) #1

declare dso_local i32 @rsb_encode(i32, i32, i32) #1

declare dso_local i32 @rsb_start(i32) #1

declare dso_local i32 @rsb_decode(i32, i32, i32, i32) #1

declare dso_local i32 @wakeup(%struct.rsb_softc*) #1

declare dso_local i32 @RSB_UNLOCK(%struct.rsb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
