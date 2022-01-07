; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/aarch64/extr_fbt_isa.c_fbt_provide_module_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/aarch64/extr_fbt_isa.c_fbt_provide_module_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i32*, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_9__*, i8*, %struct.TYPE_10__* }

@LDP_STP_MASK = common dso_local global i32 0, align 4
@STP_64 = common dso_local global i32 0, align 4
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i8* null, align 8
@DTRACE_INVOP_PUSHM = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i8** null, align 8
@RET_INSTR = common dso_local global i32 0, align 4
@B_MASK = common dso_local global i32 0, align 4
@B_INSTR = common dso_local global i32 0, align 4
@B_DATA_MASK = common dso_local global i32 0, align 4
@FBT_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_B = common dso_local global i32 0, align 4
@DTRACE_INVOP_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_provide_module_function(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %17, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = call i64 @fbt_excluded(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %257

27:                                               ; preds = %4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %14, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %15, align 8
  br label %40

40:                                               ; preds = %53, %27
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LDP_STP_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @STP_64, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %14, align 8
  br label %40

56:                                               ; preds = %51, %40
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = icmp uge i32* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %257

61:                                               ; preds = %56
  %62 = load i32, i32* @M_FBT, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.TYPE_10__* @malloc(i32 72, i32 %62, i32 %65)
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %10, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @fbt_id, align 4
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* @FBT_ENTRY, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = call i8* @dtrace_probe_create(i32 %70, i8* %71, i8* %72, i32 %73, i32 3, %struct.TYPE_10__* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @FBT_PATCHVAL, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @DTRACE_INVOP_PUSHM, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i8**, i8*** @fbt_probetab, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = call i64 @FBT_ADDR2NDX(i32* %103)
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = bitcast %struct.TYPE_10__* %109 to i8*
  %111 = load i8**, i8*** @fbt_probetab, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = call i64 @FBT_ADDR2NDX(i32* %112)
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %119

119:                                              ; preds = %230, %61
  br label %120

120:                                              ; preds = %163, %119
  %121 = load i32*, i32** %14, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ult i32* %121, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RET_INSTR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %166

130:                                              ; preds = %124
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @B_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @B_INSTR, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %130
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @B_DATA_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = mul nsw i32 %142, 4
  store i32 %143, i32* %18, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32* %147, i32** %12, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  store i32* %151, i32** %13, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = icmp uge i32* %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %137
  %156 = load i32*, i32** %12, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = icmp ult i32* %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %137
  br label %166

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %130
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  %164 = load i32*, i32** %14, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %14, align 8
  br label %120

166:                                              ; preds = %159, %129, %120
  %167 = load i32*, i32** %14, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = icmp uge i32* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %257

171:                                              ; preds = %166
  %172 = load i32, i32* @M_FBT, align 4
  %173 = load i32, i32* @M_WAITOK, align 4
  %174 = load i32, i32* @M_ZERO, align 4
  %175 = or i32 %173, %174
  %176 = call %struct.TYPE_10__* @malloc(i32 72, i32 %172, i32 %175)
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %10, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %181 = icmp eq %struct.TYPE_10__* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load i32, i32* @fbt_id, align 4
  %184 = load i8*, i8** %17, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = load i32, i32* @FBT_RETURN, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %188 = call i8* @dtrace_probe_create(i32 %183, i8* %184, i8* %185, i32 %186, i32 3, %struct.TYPE_10__* %187)
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 9
  store i8* %188, i8** %190, align 8
  br label %200

191:                                              ; preds = %171
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 10
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %194, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 9
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 9
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %191, %182
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %11, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32* %202, i32** %204, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 8
  store %struct.TYPE_9__* %205, %struct.TYPE_9__** %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @B_MASK, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* @B_INSTR, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %200
  %223 = load i32, i32* @DTRACE_INVOP_B, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 8
  br label %230

226:                                              ; preds = %200
  %227 = load i32, i32* @DTRACE_INVOP_RET, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 6
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %222
  %231 = load i32*, i32** %14, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load i8*, i8** @FBT_PATCHVAL, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  %238 = load i8**, i8*** @fbt_probetab, align 8
  %239 = load i32*, i32** %14, align 8
  %240 = call i64 @FBT_ADDR2NDX(i32* %239)
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 4
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %246 = bitcast %struct.TYPE_10__* %245 to i8*
  %247 = load i8**, i8*** @fbt_probetab, align 8
  %248 = load i32*, i32** %14, align 8
  %249 = call i64 @FBT_ADDR2NDX(i32* %248)
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %246, i8** %250, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load i32*, i32** %14, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 1
  store i32* %256, i32** %14, align 8
  br label %119

257:                                              ; preds = %170, %60, %26
  %258 = load i32, i32* %5, align 4
  ret i32 %258
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
