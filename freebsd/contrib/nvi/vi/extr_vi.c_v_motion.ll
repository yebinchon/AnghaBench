; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_motion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_v_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, i32, %struct.TYPE_24__*, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_24__*, i64 (%struct.TYPE_25__*, %struct.TYPE_24__*)* }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_25__ = type { i32, i64 }

@VC_ISDOT = common dso_local global i32 0, align 4
@VM_COMMASK = common dso_local global i32 0, align 4
@GC_OK = common dso_local global i64 0, align 8
@VC_C1SET = common dso_local global i32 0, align 4
@VC_C1RESET = common dso_local global i32 0, align 4
@VM_LDOUBLE = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@VIM_EMPTY = common dso_local global i32 0, align 4
@tmotion = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@vikeys = common dso_local global %struct.TYPE_24__* null, align 8
@VM_RCM_MASK = common dso_local global i32 0, align 4
@VM_RCM_SET = common dso_local global i32 0, align 4
@VM_RCM = common dso_local global i32 0, align 4
@V_DOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*)* @v_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_motion(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = load i32, i32* @VC_ISDOT, align 4
  %18 = call i32 @F_ISSET(%struct.TYPE_24__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = bitcast %struct.TYPE_24__* %10 to i8*
  %23 = bitcast %struct.TYPE_24__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 96, i1 false)
  %24 = load i32, i32* @VC_ISDOT, align 4
  %25 = call i32 @F_SET(%struct.TYPE_24__* %10, i32 %24)
  %26 = load i32, i32* @VM_COMMASK, align 4
  %27 = call i32 @F_CLR(%struct.TYPE_24__* %10, i32 %26)
  br label %38

28:                                               ; preds = %4
  %29 = call i32 @memset(%struct.TYPE_24__* %10, i32 0, i32 96)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @v_cmd(%struct.TYPE_25__* %30, i32* null, %struct.TYPE_24__* %10, %struct.TYPE_24__* %31, i32* %15, i32* %32)
  %34 = load i64, i64* @GC_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %333

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* @VC_C1SET, align 4
  %40 = call i32 @F_ISSET(%struct.TYPE_24__* %10, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %45 ]
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  store i32 %47, i32* %12, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %50 = load i32, i32* @VC_C1SET, align 4
  %51 = call i32 @F_ISSET(%struct.TYPE_24__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, %56
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @VC_C1SET, align 4
  %61 = call i32 @F_SET(%struct.TYPE_24__* %10, i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = load i32, i32* @VC_C1SET, align 4
  %64 = call i32 @F_CLR(%struct.TYPE_24__* %62, i32 %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %66 = load i32, i32* @VC_C1RESET, align 4
  %67 = call i32 @F_SET(%struct.TYPE_24__* %65, i32 %66)
  br label %68

68:                                               ; preds = %53, %46
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %144

75:                                               ; preds = %68
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %77 = load i32, i32* @VM_LDOUBLE, align 4
  %78 = load i32, i32* @VM_LMODE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @F_SET(%struct.TYPE_24__* %76, i32 %79)
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %92, %94
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @db_get(%struct.TYPE_25__* %100, i32 %104, i32 0, i32* null, i64* %11)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %75
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 99
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 33
  br i1 %122, label %123, label %127

123:                                              ; preds = %118, %107
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = load i32, i32* @VIM_EMPTY, align 4
  %126 = call i32 @v_emsg(%struct.TYPE_25__* %124, i32* null, i32 %125)
  store i32 1, i32* %5, align 4
  br label %333

127:                                              ; preds = %118, %113
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %143

131:                                              ; preds = %75
  %132 = load i64, i64* %11, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i64, i64* %11, align 8
  %136 = sub i64 %135, 1
  br label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i64 [ %136, %134 ], [ 0, %137 ]
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %127
  br label %318

144:                                              ; preds = %68
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 7
  store %struct.TYPE_24__* %147, %struct.TYPE_24__** %148, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = icmp eq %struct.TYPE_24__* %151, @tmotion
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  store i32 1, i32* %14, align 4
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vikeys, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i64 121
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 3
  store %struct.TYPE_24__* %155, %struct.TYPE_24__** %157, align 8
  br label %159

158:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %158, %153
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %161 = load i32, i32* @VM_RCM_MASK, align 4
  %162 = call i32 @F_ISSET(%struct.TYPE_24__* %160, i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* @VM_RCM_SET, align 4
  %164 = call i64 @LF_ISSET(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load i32, i32* @VM_RCM, align 4
  %168 = call i32 @LF_SET(i32 %167)
  %169 = load i32, i32* @VM_RCM_SET, align 4
  %170 = call i32 @LF_CLR(i32 %169)
  br label %171

171:                                              ; preds = %166, %159
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %173 = load i32, i32* @VM_RCM_MASK, align 4
  %174 = call i32 @F_CLR(%struct.TYPE_24__* %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @VM_RCM_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = call i32 @F_SET(%struct.TYPE_24__* %10, i32 %181)
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  store i64 %194, i64* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  store i64 %194, i64* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 8
  %204 = load i64 (%struct.TYPE_25__*, %struct.TYPE_24__*)*, i64 (%struct.TYPE_25__*, %struct.TYPE_24__*)** %203, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %206 = call i64 %204(%struct.TYPE_25__* %205, %struct.TYPE_24__* %10)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %171
  store i32 1, i32* %5, align 4
  br label %333

209:                                              ; preds = %171
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @db_exist(%struct.TYPE_25__* %210, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %241, label %217

217:                                              ; preds = %209
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %233, label %223

223:                                              ; preds = %217
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 99
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 33
  br i1 %232, label %233, label %237

233:                                              ; preds = %228, %217
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %235 = load i32, i32* @VIM_EMPTY, align 4
  %236 = call i32 @v_emsg(%struct.TYPE_25__* %234, i32* null, i32 %235)
  store i32 1, i32* %5, align 4
  br label %333

237:                                              ; preds = %228, %223
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %237, %209
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 3
  store %struct.TYPE_24__* @tmotion, %struct.TYPE_24__** %246, align 8
  br label %247

247:                                              ; preds = %244, %241
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %249 = load i32, i32* @VM_COMMASK, align 4
  %250 = load i32, i32* @VM_RCM_MASK, align 4
  %251 = or i32 %249, %250
  %252 = call i32 @F_ISSET(%struct.TYPE_24__* %10, i32 %251)
  %253 = call i32 @F_SET(%struct.TYPE_24__* %248, i32 %252)
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %255 = load i32, i32* @VM_RCM_MASK, align 4
  %256 = call i32 @F_ISSET(%struct.TYPE_24__* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %247
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @F_SET(%struct.TYPE_24__* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %247
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 7
  store %struct.TYPE_24__* %264, %struct.TYPE_24__** %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %269, %272
  br i1 %273, label %290, label %274

274:                                              ; preds = %262
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp ugt i64 %285, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %282, %262
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %294 = bitcast %struct.TYPE_22__* %292 to i8*
  %295 = bitcast %struct.TYPE_22__* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %294, i8* align 8 %295, i64 16, i1 false)
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %299 = bitcast %struct.TYPE_22__* %297 to i8*
  %300 = bitcast %struct.TYPE_22__* %298 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %299, i8* align 8 %300, i64 16, i1 false)
  br label %312

301:                                              ; preds = %282, %274
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 6
  %305 = bitcast %struct.TYPE_22__* %303 to i8*
  %306 = bitcast %struct.TYPE_22__* %304 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %305, i8* align 8 %306, i64 16, i1 false)
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 5
  %310 = bitcast %struct.TYPE_22__* %308 to i8*
  %311 = bitcast %struct.TYPE_22__* %309 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %310, i8* align 8 %311, i64 16, i1 false)
  br label %312

312:                                              ; preds = %301, %290
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 4
  %316 = bitcast %struct.TYPE_23__* %314 to i8*
  %317 = bitcast %struct.TYPE_23__* %315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %316, i8* align 8 %317, i64 16, i1 false)
  br label %318

318:                                              ; preds = %312, %143
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 3
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %320, align 8
  %322 = load i32, i32* @V_DOT, align 4
  %323 = call i32 @F_ISSET(%struct.TYPE_24__* %321, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %318
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %327 = bitcast %struct.TYPE_24__* %326 to i8*
  %328 = bitcast %struct.TYPE_24__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %327, i8* align 8 %328, i64 96, i1 false)
  %329 = load i32, i32* %12, align 4
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %325, %318
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %332, %233, %208, %123, %36
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local i32 @F_ISSET(%struct.TYPE_24__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @F_SET(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @v_cmd(%struct.TYPE_25__*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @db_get(%struct.TYPE_25__*, i32, i32, i32*, i64*) #1

declare dso_local i32 @v_emsg(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i32 @LF_CLR(i32) #1

declare dso_local i32 @db_exist(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
