; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_bpools.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_bpools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.fman_port_bpools = type { i32, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMAN_PORT_OBS_EXT_POOLS_NUM = common dso_local global i32 0, align 4
@FMAN_PORT_MAX_EXT_POOLS_NUM = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_VALID = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_ID_SHIFT = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_ID_MASK = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_EN_COUNTER = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_BACKUP = common dso_local global i32 0, align 4
@BMI_POOL_DEP_NUM_OF_POOLS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_set_bpools(%struct.fman_port* %0, %struct.fman_port_bpools* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_bpools*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_bpools* %1, %struct.fman_port_bpools** %5, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %15 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %55 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %33
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %19 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %23 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %29 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32* %32, i32** %8, align 8
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %35 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %263

41:                                               ; preds = %33
  %42 = load i32, i32* @FMAN_PORT_OBS_EXT_POOLS_NUM, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %45 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %7, align 8
  %50 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %51 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32* %54, i32** %8, align 8
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %263

58:                                               ; preds = %41, %17
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %65 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FMAN_PORT_MAX_EXT_POOLS_NUM, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br label %74

74:                                               ; preds = %69, %62
  %75 = phi i1 [ false, %62 ], [ %73, %69 ]
  br i1 %75, label %76, label %102

76:                                               ; preds = %74
  %77 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %78 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %86 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %84, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %76
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %263

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %62

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102, %58
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %171, %103
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %107 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %174

110:                                              ; preds = %104
  %111 = load i32, i32* @BMI_EXT_BUF_POOL_VALID, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %113 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @BMI_EXT_BUF_POOL_ID_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @BMI_EXT_BUF_POOL_ID_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %110
  %130 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %131 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @BMI_EXT_BUF_POOL_EN_COUNTER, align 4
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %140 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i32, i32* @BMI_EXT_BUF_POOL_BACKUP, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %148, %138
  %153 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %154 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %152, %110
  %165 = load i32, i32* %6, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i32 @iowrite32be(i32 %165, i32* %169)
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %104

174:                                              ; preds = %104
  %175 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %176 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %188, %174
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = call i32 @iowrite32be(i32 0, i32* %186)
  br label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %178

191:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %243, %191
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @FMAN_PORT_MAX_EXT_POOLS_NUM, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %246

196:                                              ; preds = %192
  %197 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %198 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %197, i32 0, i32 2
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load i32, i32* @TRUE, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %9, align 4
  %209 = lshr i32 -2147483648, %208
  %210 = load i32, i32* %6, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %206, %196
  %213 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %214 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %213, i32 0, i32 2
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %212
  %223 = load i32, i32* %9, align 4
  %224 = ashr i32 128, %223
  %225 = load i32, i32* %6, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %222, %212
  %228 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %229 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %228, i32 0, i32 2
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %227
  %238 = load i32, i32* %9, align 4
  %239 = shl i32 256, %238
  %240 = load i32, i32* %6, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %237, %227
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %192

246:                                              ; preds = %192
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load %struct.fman_port_bpools*, %struct.fman_port_bpools** %5, align 8
  %251 = getelementptr inbounds %struct.fman_port_bpools, %struct.fman_port_bpools* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* @BMI_POOL_DEP_NUM_OF_POOLS_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %6, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %249, %246
  %260 = load i32, i32* %6, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 @iowrite32be(i32 %260, i32* %261)
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %259, %95, %55, %38
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
