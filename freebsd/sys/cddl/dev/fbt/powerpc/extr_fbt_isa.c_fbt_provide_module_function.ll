; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/powerpc/extr_fbt_isa.c_fbt_provide_module_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/powerpc/extr_fbt_isa.c_fbt_provide_module_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i64*, i32, i64, i8*, i8*, i64, i32, i32, %struct.TYPE_9__*, i8*, %struct.TYPE_10__* }

@FBT_MFLR_R0 = common dso_local global i64 0, align 8
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@FBT_AFRAMES = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i8* null, align 8
@DTRACE_INVOP_MFLR_R0 = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i8** null, align 8
@FBT_MTLR_R0 = common dso_local global i64 0, align 8
@FBT_BCTR = common dso_local global i64 0, align 8
@FBT_BLR = common dso_local global i64 0, align 8
@FBT_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_BCTR = common dso_local global i32 0, align 4
@DTRACE_INVOP_BLR = common dso_local global i32 0, align 4
@DTRACE_INVOP_JUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_provide_module_function(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @fbt_excluded(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %305

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %15, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %16, align 8
  br label %39

39:                                               ; preds = %50, %26
  %40 = load i64*, i64** %15, align 8
  %41 = load i64*, i64** %16, align 8
  %42 = icmp ult i64* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64*, i64** %15, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FBT_MFLR_R0, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load i64*, i64** %15, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %15, align 8
  br label %39

53:                                               ; preds = %48, %39
  %54 = load i64*, i64** %15, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FBT_MFLR_R0, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %305

59:                                               ; preds = %53
  %60 = load i32, i32* @M_FBT, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.TYPE_10__* @malloc(i32 88, i32 %60, i32 %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @fbt_id, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @FBT_ENTRY, align 4
  %72 = load i32, i32* @FBT_AFRAMES, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = call i8* @dtrace_probe_create(i32 %68, i8* %69, i8* %70, i32 %71, i32 %72, %struct.TYPE_10__* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load i64*, i64** %15, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i64* %77, i64** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 9
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load i64*, i64** %15, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** @FBT_PATCHVAL, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @DTRACE_INVOP_MFLR_R0, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8**, i8*** @fbt_probetab, align 8
  %102 = load i64*, i64** %15, align 8
  %103 = call i64 @FBT_ADDR2NDX(i64* %102)
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = bitcast %struct.TYPE_10__* %108 to i8*
  %110 = load i8**, i8*** @fbt_probetab, align 8
  %111 = load i64*, i64** %15, align 8
  %112 = call i64 @FBT_ADDR2NDX(i64* %111)
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %109, i8** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  br label %118

118:                                              ; preds = %266, %197, %145, %137, %59
  %119 = load i64*, i64** %15, align 8
  %120 = load i64*, i64** %16, align 8
  %121 = icmp uge i64* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %305

123:                                              ; preds = %118
  %124 = load i64*, i64** %15, align 8
  %125 = bitcast i64* %124 to i64**
  %126 = load i64*, i64** %125, align 8
  store i64* %126, i64** %17, align 8
  %127 = load i64*, i64** %17, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i64*
  %132 = icmp uge i64* %127, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %123
  %134 = load i64*, i64** %17, align 8
  %135 = load i64*, i64** %16, align 8
  %136 = icmp ult i64* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64*, i64** %15, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %15, align 8
  br label %118

140:                                              ; preds = %133, %123
  %141 = load i64*, i64** %15, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @FBT_MTLR_R0, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i64*, i64** %15, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %15, align 8
  br label %118

148:                                              ; preds = %140
  %149 = load i64*, i64** %15, align 8
  %150 = getelementptr inbounds i64, i64* %149, i32 1
  store i64* %150, i64** %15, align 8
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %177, %148
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 12
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i64*, i64** %15, align 8
  %156 = load i64*, i64** %16, align 8
  %157 = icmp ult i64* %155, %156
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i1 [ false, %151 ], [ %157, %154 ]
  br i1 %159, label %160, label %182

160:                                              ; preds = %158
  %161 = load i64*, i64** %15, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @FBT_BCTR, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %175, label %165

165:                                              ; preds = %160
  %166 = load i64*, i64** %15, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @FBT_BLR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i64*, i64** %15, align 8
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @FBT_IS_JUMP(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %165, %160
  br label %182

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i64*, i64** %15, align 8
  %181 = getelementptr inbounds i64, i64* %180, i32 1
  store i64* %181, i64** %15, align 8
  br label %151

182:                                              ; preds = %175, %158
  %183 = load i64*, i64** %15, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FBT_BCTR, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = load i64*, i64** %15, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @FBT_BLR, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load i64*, i64** %15, align 8
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @FBT_IS_JUMP(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %118

198:                                              ; preds = %192, %187, %182
  %199 = load i32, i32* @M_FBT, align 4
  %200 = load i32, i32* @M_WAITOK, align 4
  %201 = load i32, i32* @M_ZERO, align 4
  %202 = or i32 %200, %201
  %203 = call %struct.TYPE_10__* @malloc(i32 88, i32 %199, i32 %202)
  store %struct.TYPE_10__* %203, %struct.TYPE_10__** %12, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %208 = icmp eq %struct.TYPE_10__* %207, null
  br i1 %208, label %209, label %219

209:                                              ; preds = %198
  %210 = load i32, i32* @fbt_id, align 4
  %211 = load i8*, i8** %10, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = load i32, i32* @FBT_RETURN, align 4
  %214 = load i32, i32* @FBT_AFRAMES, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %216 = call i8* @dtrace_probe_create(i32 %210, i8* %211, i8* %212, i32 %213, i32 %214, %struct.TYPE_10__* %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 10
  store i8* %216, i8** %218, align 8
  br label %228

219:                                              ; preds = %198
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 11
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %222, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 10
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 10
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %219, %209
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %229, %struct.TYPE_10__** %13, align 8
  %230 = load i64*, i64** %15, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i64* %230, i64** %232, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 9
  store %struct.TYPE_9__* %233, %struct.TYPE_9__** %235, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load i64*, i64** %15, align 8
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @FBT_BCTR, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %228
  %249 = load i32, i32* @DTRACE_INVOP_BCTR, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 7
  store i32 %249, i32* %251, align 8
  br label %266

252:                                              ; preds = %228
  %253 = load i64*, i64** %15, align 8
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @FBT_BLR, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load i32, i32* @DTRACE_INVOP_BLR, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  store i32 %258, i32* %260, align 8
  br label %265

261:                                              ; preds = %252
  %262 = load i32, i32* @DTRACE_INVOP_JUMP, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %261, %257
  br label %266

266:                                              ; preds = %265, %248
  %267 = load i64*, i64** %15, align 8
  %268 = bitcast i64* %267 to i32*
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = ptrtoint i32* %268 to i64
  %274 = ptrtoint i32* %272 to i64
  %275 = sub i64 %273, %274
  %276 = sdiv exact i64 %275, 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  store i64 %276, i64* %278, align 8
  %279 = load i64*, i64** %15, align 8
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 6
  store i64 %280, i64* %282, align 8
  %283 = load i8*, i8** @FBT_PATCHVAL, align 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 5
  store i8* %283, i8** %285, align 8
  %286 = load i8**, i8*** @fbt_probetab, align 8
  %287 = load i64*, i64** %15, align 8
  %288 = call i64 @FBT_ADDR2NDX(i64* %287)
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 4
  store i8* %290, i8** %292, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %294 = bitcast %struct.TYPE_10__* %293 to i8*
  %295 = load i8**, i8*** @fbt_probetab, align 8
  %296 = load i64*, i64** %15, align 8
  %297 = call i64 @FBT_ADDR2NDX(i64* %296)
  %298 = getelementptr inbounds i8*, i8** %295, i64 %297
  store i8* %294, i8** %298, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load i64*, i64** %15, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 4
  store i64* %304, i64** %15, align 8
  br label %118

305:                                              ; preds = %122, %58, %25
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i64 @fbt_excluded(i8*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i64*) #1

declare dso_local i64 @FBT_IS_JUMP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
