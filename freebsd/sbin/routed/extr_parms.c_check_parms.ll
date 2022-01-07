; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_check_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_check_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parm = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i32, i32, %struct.parm* }
%struct.TYPE_2__ = type { i64 }

@IS_NO_ADV_IN = common dso_local global i32 0, align 4
@IS_NO_SOL_OUT = common dso_local global i32 0, align 4
@MAX_AUTH_KEYS = common dso_local global i32 0, align 4
@RIP_AUTH_NONE = common dso_local global i64 0, align 8
@parms = common dso_local global %struct.parm* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"too many conflicting passwords\00", align 1
@GROUP_IS_SOL_OUT = common dso_local global i32 0, align 4
@GROUP_IS_ADV_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"conflicting, duplicate router discovery parameters\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"conflicting, duplicate poor man's router discovery or fake default metric\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"conflicting interface input metric adjustments\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"conflicting interface output metric adjustments\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"check_parms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @check_parms(%struct.parm* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parm*, align 8
  %4 = alloca %struct.parm*, align 8
  %5 = alloca %struct.parm**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parm* %0, %struct.parm** %3, align 8
  %8 = load %struct.parm*, %struct.parm** %3, align 8
  %9 = getelementptr inbounds %struct.parm, %struct.parm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IS_NO_ADV_IN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @IS_NO_SOL_OUT, align 4
  %16 = load %struct.parm*, %struct.parm** %3, align 8
  %17 = getelementptr inbounds %struct.parm, %struct.parm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.parm*, %struct.parm** %3, align 8
  %22 = getelementptr inbounds %struct.parm, %struct.parm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IS_NO_SOL_OUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @IS_NO_ADV_IN, align 4
  %29 = load %struct.parm*, %struct.parm** %3, align 8
  %30 = getelementptr inbounds %struct.parm, %struct.parm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %20
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.parm*, %struct.parm** %3, align 8
  %40 = getelementptr inbounds %struct.parm, %struct.parm* %39, i32 0, i32 6
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RIP_AUTH_NONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %34

56:                                               ; preds = %34
  store %struct.parm** @parms, %struct.parm*** %5, align 8
  br label %57

57:                                               ; preds = %271, %56
  %58 = load %struct.parm**, %struct.parm*** %5, align 8
  %59 = load %struct.parm*, %struct.parm** %58, align 8
  store %struct.parm* %59, %struct.parm** %4, align 8
  %60 = icmp ne %struct.parm* %59, null
  br i1 %60, label %61, label %274

61:                                               ; preds = %57
  %62 = load %struct.parm*, %struct.parm** %3, align 8
  %63 = getelementptr inbounds %struct.parm, %struct.parm* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.parm*, %struct.parm** %4, align 8
  %66 = getelementptr inbounds %struct.parm, %struct.parm* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strcmp(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %271

71:                                               ; preds = %61
  %72 = load %struct.parm*, %struct.parm** %4, align 8
  %73 = getelementptr inbounds %struct.parm, %struct.parm* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @htonl(i32 %74)
  %76 = load %struct.parm*, %struct.parm** %3, align 8
  %77 = getelementptr inbounds %struct.parm, %struct.parm* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.parm*, %struct.parm** %3, align 8
  %80 = getelementptr inbounds %struct.parm, %struct.parm* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @on_net(i32 %75, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %71
  %85 = load %struct.parm*, %struct.parm** %3, align 8
  %86 = getelementptr inbounds %struct.parm, %struct.parm* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @htonl(i32 %87)
  %89 = load %struct.parm*, %struct.parm** %4, align 8
  %90 = getelementptr inbounds %struct.parm, %struct.parm* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.parm*, %struct.parm** %4, align 8
  %93 = getelementptr inbounds %struct.parm, %struct.parm* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @on_net(i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %84
  br label %271

98:                                               ; preds = %84, %71
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.parm*, %struct.parm** %4, align 8
  %105 = getelementptr inbounds %struct.parm, %struct.parm* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @RIP_AUTH_NONE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %114, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %99

121:                                              ; preds = %99
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %282

126:                                              ; preds = %121
  %127 = load %struct.parm*, %struct.parm** %3, align 8
  %128 = getelementptr inbounds %struct.parm, %struct.parm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 0, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %126
  %134 = load %struct.parm*, %struct.parm** %4, align 8
  %135 = getelementptr inbounds %struct.parm, %struct.parm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 0, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.parm*, %struct.parm** %3, align 8
  %142 = getelementptr inbounds %struct.parm, %struct.parm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.parm*, %struct.parm** %4, align 8
  %145 = getelementptr inbounds %struct.parm, %struct.parm* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = xor i32 %143, %146
  %148 = load i32, i32* @GROUP_IS_SOL_OUT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 0, %149
  br i1 %150, label %212, label %151

151:                                              ; preds = %140, %133, %126
  %152 = load %struct.parm*, %struct.parm** %3, align 8
  %153 = getelementptr inbounds %struct.parm, %struct.parm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 0, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %151
  %159 = load %struct.parm*, %struct.parm** %4, align 8
  %160 = getelementptr inbounds %struct.parm, %struct.parm* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 0, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %158
  %166 = load %struct.parm*, %struct.parm** %3, align 8
  %167 = getelementptr inbounds %struct.parm, %struct.parm* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.parm*, %struct.parm** %4, align 8
  %170 = getelementptr inbounds %struct.parm, %struct.parm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = xor i32 %168, %171
  %173 = load i32, i32* @GROUP_IS_ADV_OUT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 0, %174
  br i1 %175, label %212, label %176

176:                                              ; preds = %165, %158, %151
  %177 = load %struct.parm*, %struct.parm** %3, align 8
  %178 = getelementptr inbounds %struct.parm, %struct.parm* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load %struct.parm*, %struct.parm** %4, align 8
  %183 = getelementptr inbounds %struct.parm, %struct.parm* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.parm*, %struct.parm** %3, align 8
  %188 = getelementptr inbounds %struct.parm, %struct.parm* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.parm*, %struct.parm** %4, align 8
  %191 = getelementptr inbounds %struct.parm, %struct.parm* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %189, %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %186, %181, %176
  %195 = load %struct.parm*, %struct.parm** %3, align 8
  %196 = getelementptr inbounds %struct.parm, %struct.parm* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  %200 = load %struct.parm*, %struct.parm** %4, align 8
  %201 = getelementptr inbounds %struct.parm, %struct.parm* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load %struct.parm*, %struct.parm** %3, align 8
  %206 = getelementptr inbounds %struct.parm, %struct.parm* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.parm*, %struct.parm** %4, align 8
  %209 = getelementptr inbounds %struct.parm, %struct.parm* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %204, %186, %165, %140
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %282

213:                                              ; preds = %204, %199, %194
  %214 = load %struct.parm*, %struct.parm** %3, align 8
  %215 = getelementptr inbounds %struct.parm, %struct.parm* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %213
  %219 = load %struct.parm*, %struct.parm** %4, align 8
  %220 = getelementptr inbounds %struct.parm, %struct.parm* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.parm*, %struct.parm** %3, align 8
  %225 = getelementptr inbounds %struct.parm, %struct.parm* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.parm*, %struct.parm** %4, align 8
  %228 = getelementptr inbounds %struct.parm, %struct.parm* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %282

232:                                              ; preds = %223, %218, %213
  %233 = load %struct.parm*, %struct.parm** %3, align 8
  %234 = getelementptr inbounds %struct.parm, %struct.parm* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.parm*, %struct.parm** %4, align 8
  %239 = getelementptr inbounds %struct.parm, %struct.parm* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load %struct.parm*, %struct.parm** %3, align 8
  %244 = getelementptr inbounds %struct.parm, %struct.parm* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.parm*, %struct.parm** %4, align 8
  %247 = getelementptr inbounds %struct.parm, %struct.parm* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %282

251:                                              ; preds = %242, %237, %232
  %252 = load %struct.parm*, %struct.parm** %3, align 8
  %253 = getelementptr inbounds %struct.parm, %struct.parm* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %251
  %257 = load %struct.parm*, %struct.parm** %4, align 8
  %258 = getelementptr inbounds %struct.parm, %struct.parm* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %256
  %262 = load %struct.parm*, %struct.parm** %3, align 8
  %263 = getelementptr inbounds %struct.parm, %struct.parm* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.parm*, %struct.parm** %4, align 8
  %266 = getelementptr inbounds %struct.parm, %struct.parm* %265, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %282

270:                                              ; preds = %261, %256, %251
  br label %271

271:                                              ; preds = %270, %97, %70
  %272 = load %struct.parm*, %struct.parm** %4, align 8
  %273 = getelementptr inbounds %struct.parm, %struct.parm* %272, i32 0, i32 10
  store %struct.parm** %273, %struct.parm*** %5, align 8
  br label %57

274:                                              ; preds = %57
  %275 = call i64 @rtmalloc(i32 80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %276 = inttoptr i64 %275 to %struct.parm*
  store %struct.parm* %276, %struct.parm** %4, align 8
  %277 = load %struct.parm*, %struct.parm** %4, align 8
  %278 = load %struct.parm*, %struct.parm** %3, align 8
  %279 = call i32 @memcpy(%struct.parm* %277, %struct.parm* %278, i32 80)
  %280 = load %struct.parm*, %struct.parm** %4, align 8
  %281 = load %struct.parm**, %struct.parm*** %5, align 8
  store %struct.parm* %280, %struct.parm** %281, align 8
  store i8* null, i8** %2, align 8
  br label %282

282:                                              ; preds = %274, %269, %250, %231, %212, %125
  %283 = load i8*, i8** %2, align 8
  ret i8* %283
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @on_net(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @rtmalloc(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.parm*, %struct.parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
