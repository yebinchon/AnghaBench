; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/arm/extr_fbt_isa.c_fbt_provide_module_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/arm/extr_fbt_isa.c_fbt_provide_module_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i32*, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_9__*, i8*, %struct.TYPE_10__* }

@FBT_SUBSP = common dso_local global i32 0, align 4
@FBT_PUSHM = common dso_local global i32 0, align 4
@LR = common dso_local global i32 0, align 4
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@FBT_BREAKPOINT = common dso_local global i8* null, align 8
@DTRACE_INVOP_PUSHM = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i8** null, align 8
@FBT_POPM = common dso_local global i32 0, align 4
@FBT_JUMP = common dso_local global i32 0, align 4
@FBT_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_B = common dso_local global i32 0, align 4
@DTRACE_INVOP_POPM = common dso_local global i32 0, align 4

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
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @fbt_excluded(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %265

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %14, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -4096
  %44 = load i32, i32* @FBT_SUBSP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %14, align 8
  br label %49

49:                                               ; preds = %46, %28
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -65536
  %53 = load i32, i32* @FBT_PUSHM, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LR, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %49
  store i32 0, i32* %5, align 4
  br label %265

63:                                               ; preds = %55
  %64 = load i32, i32* @M_FBT, align 4
  %65 = load i32, i32* @M_WAITOK, align 4
  %66 = load i32, i32* @M_ZERO, align 4
  %67 = or i32 %65, %66
  %68 = call %struct.TYPE_10__* @malloc(i32 72, i32 %64, i32 %67)
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %12, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @fbt_id, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* @FBT_ENTRY, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = call i8* @dtrace_probe_create(i32 %72, i8* %73, i8* %74, i32 %75, i32 2, %struct.TYPE_10__* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @FBT_BREAKPOINT, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @DTRACE_INVOP_PUSHM, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i8**, i8*** @fbt_probetab, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = call i64 @FBT_ADDR2NDX(i32* %105)
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = bitcast %struct.TYPE_10__* %111 to i8*
  %113 = load i8**, i8*** @fbt_probetab, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i64 @FBT_ADDR2NDX(i32* %114)
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %112, i8** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @FBT_POPM, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 16383
  %125 = or i32 %121, %124
  %126 = or i32 %125, 32768
  store i32 %126, i32* %16, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  br label %127

127:                                              ; preds = %238, %63
  br label %128

128:                                              ; preds = %172, %127
  %129 = load i32*, i32** %14, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = icmp ult i32* %129, %130
  br i1 %131, label %132, label %175

132:                                              ; preds = %128
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %175

138:                                              ; preds = %132
  %139 = load i32*, i32** %14, align 8
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, -16777216
  %142 = load i32, i32* @FBT_JUMP, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 16777215
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = shl i32 %148, 8
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = sdiv i32 %150, 64
  store i32 %151, i32* %19, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 2, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32* %156, i32** %17, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i32*
  store i32* %160, i32** %18, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = icmp uge i32* %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %144
  %165 = load i32*, i32** %17, align 8
  %166 = load i32*, i32** %18, align 8
  %167 = icmp ult i32* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %144
  br label %175

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %138
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %14, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %14, align 8
  br label %128

175:                                              ; preds = %168, %137, %128
  %176 = load i32*, i32** %14, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = icmp uge i32* %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %265

180:                                              ; preds = %175
  %181 = load i32, i32* @M_FBT, align 4
  %182 = load i32, i32* @M_WAITOK, align 4
  %183 = load i32, i32* @M_ZERO, align 4
  %184 = or i32 %182, %183
  %185 = call %struct.TYPE_10__* @malloc(i32 72, i32 %181, i32 %184)
  store %struct.TYPE_10__* %185, %struct.TYPE_10__** %12, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %190 = icmp eq %struct.TYPE_10__* %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %180
  %192 = load i32, i32* @fbt_id, align 4
  %193 = load i8*, i8** %10, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load i32, i32* @FBT_RETURN, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %197 = call i8* @dtrace_probe_create(i32 %192, i8* %193, i8* %194, i32 %195, i32 2, %struct.TYPE_10__* %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 9
  store i8* %197, i8** %199, align 8
  br label %209

200:                                              ; preds = %180
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 10
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 9
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 9
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %200, %191
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %210, %struct.TYPE_10__** %13, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i32* %211, i32** %213, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 8
  store %struct.TYPE_9__* %214, %struct.TYPE_9__** %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, -16777216
  %228 = load i32, i32* @FBT_JUMP, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %209
  %231 = load i32, i32* @DTRACE_INVOP_B, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 8
  br label %238

234:                                              ; preds = %209
  %235 = load i32, i32* @DTRACE_INVOP_POPM, align 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %234, %230
  %239 = load i32*, i32** %14, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load i8*, i8** @FBT_BREAKPOINT, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load i8**, i8*** @fbt_probetab, align 8
  %247 = load i32*, i32** %14, align 8
  %248 = call i64 @FBT_ADDR2NDX(i32* %247)
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %254 = bitcast %struct.TYPE_10__* %253 to i8*
  %255 = load i8**, i8*** @fbt_probetab, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = call i64 @FBT_ADDR2NDX(i32* %256)
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  store i8* %254, i8** %258, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  %263 = load i32*, i32** %14, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %14, align 8
  br label %127

265:                                              ; preds = %179, %62, %27
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i64 @fbt_excluded(i8*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
