; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_isrch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_isrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_32__*, i32)* }
%struct.TYPE_30__ = type { %struct.TYPE_33__, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i8*, i64 }

@IS_RUNNING = common dso_local global i32 0, align 4
@VIP_S_MODELINE = common dso_local global i32 0, align 4
@SC_TINPUT = common dso_local global i32 0, align 4
@SC_TINPUT_INFO = common dso_local global i32 0, align 4
@IS_RESTART = common dso_local global i32 0, align 4
@SEARCH_SET = common dso_local global i32 0, align 4
@SEARCH_INCR = common dso_local global i32 0, align 4
@TMAP = common dso_local global %struct.TYPE_34__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_31__*, i32*)* @txt_isrch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_isrch(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1, %struct.TYPE_31__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %14 = call i64 @IS_ONELINE(%struct.TYPE_32__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IS_RUNNING, align 4
  %20 = call i32 @FL_CLR(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %303

21:                                               ; preds = %4
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 1
  %31 = bitcast %struct.TYPE_33__* %28 to i8*
  %32 = bitcast %struct.TYPE_33__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %303

33:                                               ; preds = %21
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %65

46:                                               ; preds = %33
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 92
  br i1 %63, label %64, label %65

64:                                               ; preds = %51, %46
  store i32 0, i32* %5, align 4
  br label %303

65:                                               ; preds = %51, %33
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @IS_SHELLMETA(%struct.TYPE_32__* %66, i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %65
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 92
  br i1 %96, label %97, label %104

97:                                               ; preds = %84, %79
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 1
  %102 = bitcast %struct.TYPE_33__* %99 to i8*
  %103 = bitcast %struct.TYPE_33__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 8, i1 false)
  br label %104

104:                                              ; preds = %97, %84, %65
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %110, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %104
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %131, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 92
  br i1 %140, label %141, label %152

141:                                              ; preds = %128, %123
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = bitcast %struct.TYPE_33__* %143 to i8*
  %147 = bitcast %struct.TYPE_33__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 8, i1 false)
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IS_RUNNING, align 4
  %151 = call i32 @FL_CLR(i32 %149, i32 %150)
  store i32 0, i32* %5, align 4
  br label %303

152:                                              ; preds = %128, %104
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %11, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %157 = call %struct.TYPE_32__* @VIP(%struct.TYPE_32__* %156)
  %158 = load i32, i32* @VIP_S_MODELINE, align 4
  %159 = call i32 @F_SET(%struct.TYPE_32__* %157, i32 %158)
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %161 = load i32, i32* @SC_TINPUT, align 4
  %162 = load i32, i32* @SC_TINPUT_INFO, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @F_CLR(%struct.TYPE_32__* %160, i32 %163)
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %166 = call i64 @txt_map_end(%struct.TYPE_32__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  store i32 1, i32* %5, align 4
  br label %303

169:                                              ; preds = %152
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IS_RESTART, align 4
  %173 = call i64 @FL_ISSET(i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 1
  %178 = bitcast %struct.TYPE_33__* %10 to i8*
  %179 = bitcast %struct.TYPE_33__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 8, i1 false)
  %180 = load i32, i32* @SEARCH_SET, align 4
  store i32 %180, i32* %12, align 4
  br label %189

181:                                              ; preds = %169
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 0
  %184 = bitcast %struct.TYPE_33__* %10 to i8*
  %185 = bitcast %struct.TYPE_33__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 8, i1 false)
  %186 = load i32, i32* @SEARCH_INCR, align 4
  %187 = load i32, i32* @SEARCH_SET, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %181, %175
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 47
  br i1 %196, label %197, label %213

197:                                              ; preds = %189
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @f_search(%struct.TYPE_32__* %198, %struct.TYPE_33__* %10, %struct.TYPE_33__* %200, i8* %204, i64 %209, i32* null, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %255, label %229

213:                                              ; preds = %189
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @b_search(%struct.TYPE_32__* %214, %struct.TYPE_33__* %10, %struct.TYPE_33__* %216, i8* %220, i64 %225, i32* null, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %255, label %229

229:                                              ; preds = %213, %197
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IS_RESTART, align 4
  %245 = call i32 @FL_CLR(i32 %243, i32 %244)
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %247 = call i32 @KEYS_WAITING(%struct.TYPE_32__* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %229
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %251 = call i64 @vs_refresh(%struct.TYPE_32__* %250, i32 0)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 1, i32* %5, align 4
  br label %303

254:                                              ; preds = %249, %229
  br label %260

255:                                              ; preds = %213, %197
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IS_RESTART, align 4
  %259 = call i32 @FL_SET(i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %255, %254
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %262 = call i64 @txt_map_init(%struct.TYPE_32__* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store i32 1, i32* %5, align 4
  br label %303

265:                                              ; preds = %260
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %267 = call %struct.TYPE_32__* @VIP(%struct.TYPE_32__* %266)
  %268 = load i32, i32* @VIP_S_MODELINE, align 4
  %269 = call i32 @F_CLR(%struct.TYPE_32__* %267, i32 %268)
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %271 = load i32, i32* @SC_TINPUT, align 4
  %272 = load i32, i32* @SC_TINPUT_INFO, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @F_SET(%struct.TYPE_32__* %270, i32 %273)
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** @TMAP, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  %281 = load i64, i64* %11, align 8
  %282 = load %struct.TYPE_34__*, %struct.TYPE_34__** @TMAP, align 8
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %281, %285
  br i1 %286, label %287, label %302

287:                                              ; preds = %265
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** @TMAP, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i64 0
  %291 = call i64 @vs_line(%struct.TYPE_32__* %288, %struct.TYPE_34__* %290, i32* null, i32* null)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32 1, i32* %5, align 4
  br label %303

294:                                              ; preds = %287
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 0
  %299 = load i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, i32)** %298, align 8
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %301 = call i32 %299(%struct.TYPE_32__* %300, i32 0)
  br label %302

302:                                              ; preds = %294, %265
  store i32 0, i32* %5, align 4
  br label %303

303:                                              ; preds = %302, %293, %264, %253, %168, %141, %64, %26, %16
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local i64 @IS_ONELINE(%struct.TYPE_32__*) #1

declare dso_local i32 @FL_CLR(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_SHELLMETA(%struct.TYPE_32__*, i8 signext) #1

declare dso_local i32 @F_SET(%struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @VIP(%struct.TYPE_32__*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @txt_map_end(%struct.TYPE_32__*) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32 @f_search(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i8*, i64, i32*, i32) #1

declare dso_local i32 @b_search(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i8*, i64, i32*, i32) #1

declare dso_local i32 @KEYS_WAITING(%struct.TYPE_32__*) #1

declare dso_local i64 @vs_refresh(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @FL_SET(i32, i32) #1

declare dso_local i64 @txt_map_init(%struct.TYPE_32__*) #1

declare dso_local i64 @vs_line(%struct.TYPE_32__*, %struct.TYPE_34__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
