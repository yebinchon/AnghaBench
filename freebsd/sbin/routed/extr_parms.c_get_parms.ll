; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_get_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_get_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parm = type { i8*, i32, i64, i64, i64, i64, %struct.TYPE_4__*, i32, i32, %struct.parm* }
%struct.TYPE_4__ = type { i64 }
%struct.interface = type { i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@get_parms.warned_auth_in = internal global i32 0, align 4
@get_parms.warned_auth_out = internal global i32 0, align 4
@parms = common dso_local global %struct.parm* null, align 8
@MAX_AUTH_KEYS = common dso_local global i32 0, align 4
@RIP_AUTH_NONE = common dso_local global i64 0, align 8
@IS_PM_RDISC = common dso_local global i32 0, align 4
@FAKE_METRIC = common dso_local global i64 0, align 8
@DefMaxAdvertiseInterval = common dso_local global i64 0, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IS_REMOTE = common dso_local global i32 0, align 4
@IS_BCAST_RDISC = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@GROUP_IS_SOL_OUT = common dso_local global i32 0, align 4
@IS_NO_SOL_OUT = common dso_local global i32 0, align 4
@GROUP_IS_ADV_OUT = common dso_local global i32 0, align 4
@IS_NO_ADV_OUT = common dso_local global i32 0, align 4
@IS_PASSIVE = common dso_local global i32 0, align 4
@IS_NO_RDISC = common dso_local global i32 0, align 4
@IS_NO_RIP = common dso_local global i32 0, align 4
@IS_NO_RIPV1_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Warning: RIPv1 input via %s will be accepted without authentication\00", align 1
@IS_NO_RIPV1_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Warning: RIPv1 output via %s will be sent without authentication\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_parms(%struct.interface* %0) #0 {
  %2 = alloca %struct.interface*, align 8
  %3 = alloca %struct.parm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.interface* %0, %struct.interface** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.parm*, %struct.parm** @parms, align 8
  store %struct.parm* %6, %struct.parm** %3, align 8
  br label %7

7:                                                ; preds = %137, %1
  %8 = load %struct.parm*, %struct.parm** %3, align 8
  %9 = icmp ne %struct.parm* %8, null
  br i1 %9, label %10, label %141

10:                                               ; preds = %7
  %11 = load %struct.parm*, %struct.parm** %3, align 8
  %12 = getelementptr inbounds %struct.parm, %struct.parm* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %10
  %19 = load %struct.interface*, %struct.interface** %2, align 8
  %20 = getelementptr inbounds %struct.interface, %struct.interface* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.parm*, %struct.parm** %3, align 8
  %23 = getelementptr inbounds %struct.parm, %struct.parm* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i32 %21, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.parm*, %struct.parm** %3, align 8
  %29 = getelementptr inbounds %struct.parm, %struct.parm* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %136

35:                                               ; preds = %27
  %36 = load %struct.interface*, %struct.interface** %2, align 8
  %37 = getelementptr inbounds %struct.interface, %struct.interface* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.parm*, %struct.parm** %3, align 8
  %40 = getelementptr inbounds %struct.parm, %struct.parm* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.parm*, %struct.parm** %3, align 8
  %43 = getelementptr inbounds %struct.parm, %struct.parm* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @on_net(i32 %38, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %136

47:                                               ; preds = %35, %18, %10
  %48 = load %struct.parm*, %struct.parm** %3, align 8
  %49 = getelementptr inbounds %struct.parm, %struct.parm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.interface*, %struct.interface** %2, align 8
  %52 = getelementptr inbounds %struct.interface, %struct.interface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %88, %47
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load %struct.parm*, %struct.parm** %3, align 8
  %61 = getelementptr inbounds %struct.parm, %struct.parm* %60, i32 0, i32 6
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RIP_AUTH_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %59
  br label %91

73:                                               ; preds = %68
  %74 = load %struct.interface*, %struct.interface** %2, align 8
  %75 = getelementptr inbounds %struct.interface, %struct.interface* %74, i32 0, i32 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %79
  %81 = load %struct.parm*, %struct.parm** %3, align 8
  %82 = getelementptr inbounds %struct.parm, %struct.parm* %81, i32 0, i32 6
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = call i32 @memcpy(%struct.TYPE_3__* %80, %struct.TYPE_4__* %86, i32 8)
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %55

91:                                               ; preds = %72, %55
  %92 = load %struct.parm*, %struct.parm** %3, align 8
  %93 = getelementptr inbounds %struct.parm, %struct.parm* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.parm*, %struct.parm** %3, align 8
  %98 = getelementptr inbounds %struct.parm, %struct.parm* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.interface*, %struct.interface** %2, align 8
  %101 = getelementptr inbounds %struct.interface, %struct.interface* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.parm*, %struct.parm** %3, align 8
  %104 = getelementptr inbounds %struct.parm, %struct.parm* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.parm*, %struct.parm** %3, align 8
  %109 = getelementptr inbounds %struct.parm, %struct.parm* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.interface*, %struct.interface** %2, align 8
  %112 = getelementptr inbounds %struct.interface, %struct.interface* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.parm*, %struct.parm** %3, align 8
  %115 = getelementptr inbounds %struct.parm, %struct.parm* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.parm*, %struct.parm** %3, align 8
  %120 = getelementptr inbounds %struct.parm, %struct.parm* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.interface*, %struct.interface** %2, align 8
  %123 = getelementptr inbounds %struct.interface, %struct.interface* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.parm*, %struct.parm** %3, align 8
  %126 = getelementptr inbounds %struct.parm, %struct.parm* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.parm*, %struct.parm** %3, align 8
  %131 = getelementptr inbounds %struct.parm, %struct.parm* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.interface*, %struct.interface** %2, align 8
  %134 = getelementptr inbounds %struct.interface, %struct.interface* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %124
  br label %136

136:                                              ; preds = %135, %35, %27
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.parm*, %struct.parm** %3, align 8
  %139 = getelementptr inbounds %struct.parm, %struct.parm* %138, i32 0, i32 9
  %140 = load %struct.parm*, %struct.parm** %139, align 8
  store %struct.parm* %140, %struct.parm** %3, align 8
  br label %7

141:                                              ; preds = %7
  %142 = load %struct.interface*, %struct.interface** %2, align 8
  %143 = getelementptr inbounds %struct.interface, %struct.interface* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IS_PM_RDISC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load %struct.interface*, %struct.interface** %2, align 8
  %150 = getelementptr inbounds %struct.interface, %struct.interface* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* @FAKE_METRIC, align 8
  %155 = load %struct.interface*, %struct.interface** %2, align 8
  %156 = getelementptr inbounds %struct.interface, %struct.interface* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %148, %141
  %158 = load %struct.interface*, %struct.interface** %2, align 8
  %159 = getelementptr inbounds %struct.interface, %struct.interface* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i64, i64* @DefMaxAdvertiseInterval, align 8
  %164 = load %struct.interface*, %struct.interface** %2, align 8
  %165 = getelementptr inbounds %struct.interface, %struct.interface* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.interface*, %struct.interface** %2, align 8
  %168 = getelementptr inbounds %struct.interface, %struct.interface* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IFF_MULTICAST, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %166
  %174 = load %struct.interface*, %struct.interface** %2, align 8
  %175 = getelementptr inbounds %struct.interface, %struct.interface* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IS_REMOTE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @IS_BCAST_RDISC, align 4
  %182 = load %struct.interface*, %struct.interface** %2, align 8
  %183 = getelementptr inbounds %struct.interface, %struct.interface* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %173, %166
  %187 = load %struct.interface*, %struct.interface** %2, align 8
  %188 = getelementptr inbounds %struct.interface, %struct.interface* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IFF_POINTOPOINT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %186
  %194 = load i32, i32* @IS_BCAST_RDISC, align 4
  %195 = load %struct.interface*, %struct.interface** %2, align 8
  %196 = getelementptr inbounds %struct.interface, %struct.interface* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load %struct.interface*, %struct.interface** %2, align 8
  %200 = getelementptr inbounds %struct.interface, %struct.interface* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 0, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %193
  %206 = load i32, i32* @IS_NO_SOL_OUT, align 4
  %207 = load %struct.interface*, %struct.interface** %2, align 8
  %208 = getelementptr inbounds %struct.interface, %struct.interface* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %193
  %212 = load %struct.interface*, %struct.interface** %2, align 8
  %213 = getelementptr inbounds %struct.interface, %struct.interface* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 0, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load i32, i32* @IS_NO_ADV_OUT, align 4
  %220 = load %struct.interface*, %struct.interface** %2, align 8
  %221 = getelementptr inbounds %struct.interface, %struct.interface* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %211
  br label %225

225:                                              ; preds = %224, %186
  %226 = load %struct.interface*, %struct.interface** %2, align 8
  %227 = getelementptr inbounds %struct.interface, %struct.interface* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @IS_PASSIVE, align 4
  %230 = load i32, i32* @IS_REMOTE, align 4
  %231 = or i32 %229, %230
  %232 = and i32 %228, %231
  %233 = icmp ne i32 0, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %225
  %235 = load i32, i32* @IS_NO_RDISC, align 4
  %236 = load %struct.interface*, %struct.interface** %2, align 8
  %237 = getelementptr inbounds %struct.interface, %struct.interface* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %225
  %241 = load %struct.interface*, %struct.interface** %2, align 8
  %242 = getelementptr inbounds %struct.interface, %struct.interface* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @IS_PASSIVE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i32, i32* @IS_NO_RIP, align 4
  %249 = load %struct.interface*, %struct.interface** %2, align 8
  %250 = getelementptr inbounds %struct.interface, %struct.interface* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %240
  %254 = load %struct.interface*, %struct.interface** %2, align 8
  %255 = getelementptr inbounds %struct.interface, %struct.interface* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @IS_RIP_IN_OFF(i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %283, label %259

259:                                              ; preds = %253
  %260 = load %struct.interface*, %struct.interface** %2, align 8
  %261 = getelementptr inbounds %struct.interface, %struct.interface* %260, i32 0, i32 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @RIP_AUTH_NONE, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %259
  %269 = load %struct.interface*, %struct.interface** %2, align 8
  %270 = getelementptr inbounds %struct.interface, %struct.interface* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @IS_NO_RIPV1_IN, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %268
  %276 = load i32, i32* @get_parms.warned_auth_in, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %275
  %279 = load %struct.interface*, %struct.interface** %2, align 8
  %280 = getelementptr inbounds %struct.interface, %struct.interface* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @msglog(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %281)
  store i32 1, i32* @get_parms.warned_auth_in, align 4
  br label %283

283:                                              ; preds = %278, %275, %268, %259, %253
  %284 = load %struct.interface*, %struct.interface** %2, align 8
  %285 = getelementptr inbounds %struct.interface, %struct.interface* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @IS_RIP_OUT_OFF(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %314, label %289

289:                                              ; preds = %283
  %290 = load %struct.interface*, %struct.interface** %2, align 8
  %291 = getelementptr inbounds %struct.interface, %struct.interface* %290, i32 0, i32 8
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @RIP_AUTH_NONE, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %314

298:                                              ; preds = %289
  %299 = load %struct.interface*, %struct.interface** %2, align 8
  %300 = getelementptr inbounds %struct.interface, %struct.interface* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @IS_NO_RIPV1_OUT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %314, label %305

305:                                              ; preds = %298
  %306 = load i32, i32* @get_parms.warned_auth_out, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %305
  %309 = load %struct.interface*, %struct.interface** %2, align 8
  %310 = getelementptr inbounds %struct.interface, %struct.interface* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @msglog(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %311)
  store i32 1, i32* @get_parms.warned_auth_out, align 4
  br label %313

313:                                              ; preds = %308, %305
  br label %314

314:                                              ; preds = %313, %298, %289, %283
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @on_net(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @IS_RIP_IN_OFF(i32) #1

declare dso_local i32 @msglog(i8*, i32) #1

declare dso_local i32 @IS_RIP_OUT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
