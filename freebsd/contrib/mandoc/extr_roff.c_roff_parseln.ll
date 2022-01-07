; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parseln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parseln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)*, i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)*, i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)* }
%struct.roff = type { %struct.TYPE_8__*, i32*, %struct.TYPE_6__*, i32*, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.buf = type { i8* }

@ROFF_REPARSE = common dso_local global i32 0, align 4
@ROFF_CONT = common dso_local global i32 0, align 4
@ROFF_MASK = common dso_local global i32 0, align 4
@ROFF_IGN = common dso_local global i32 0, align 4
@roffs = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c".EN\00", align 1
@MANDOCERR_COMMENT_BAD = common dso_local global i32 0, align 4
@TOKEN_NONE = common dso_local global i32 0, align 4
@ROFF_TS = common dso_local global i32 0, align 4
@ROFF_br = common dso_local global i32 0, align 4
@ROFF_ce = common dso_local global i32 0, align 4
@ROFF_rj = common dso_local global i32 0, align 4
@ROFF_sp = common dso_local global i32 0, align 4
@MANDOCERR_TBLMACRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@roffce_node = common dso_local global i32* null, align 8
@ROFF_Dd = common dso_local global i32 0, align 4
@ROFF_EQ = common dso_local global i32 0, align 4
@ROFF_TH = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@roffce_lines = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roff_parseln(%struct.roff* %0, i32 %1, %struct.buf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buf* %2, %struct.buf** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.roff*, %struct.roff** %6, align 8
  %19 = getelementptr inbounds %struct.roff, %struct.roff* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %4
  %23 = load %struct.roff*, %struct.roff** %6, align 8
  %24 = getelementptr inbounds %struct.roff, %struct.roff* %23, i32 0, i32 6
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.roff*, %struct.roff** %6, align 8
  %29 = getelementptr inbounds %struct.roff, %struct.roff* %28, i32 0, i32 6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %27
  %35 = load %struct.roff*, %struct.roff** %6, align 8
  %36 = getelementptr inbounds %struct.roff, %struct.roff* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.roff*, %struct.roff** %6, align 8
  %41 = getelementptr inbounds %struct.roff, %struct.roff* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39, %34
  %45 = load %struct.roff*, %struct.roff** %6, align 8
  %46 = load %struct.buf*, %struct.buf** %8, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @roff_eqndelim(%struct.roff* %45, %struct.buf* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ROFF_REPARSE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %426

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ROFF_CONT, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %54, %39, %27, %22, %4
  %61 = load %struct.roff*, %struct.roff** %6, align 8
  %62 = load %struct.buf*, %struct.buf** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.roff*, %struct.roff** %6, align 8
  %66 = getelementptr inbounds %struct.roff, %struct.roff* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @roff_expand(%struct.roff* %61, %struct.buf* %62, i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ROFF_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @ROFF_IGN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %426

76:                                               ; preds = %60
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ROFF_CONT, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.roff*, %struct.roff** %6, align 8
  %83 = load %struct.buf*, %struct.buf** %8, align 8
  %84 = getelementptr inbounds %struct.buf, %struct.buf* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @roff_getcontrol(%struct.roff* %82, i8* %85, i32* %12)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.roff*, %struct.roff** %6, align 8
  %88 = getelementptr inbounds %struct.roff, %struct.roff* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %126

91:                                               ; preds = %76
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %126, label %94

94:                                               ; preds = %91
  %95 = load %struct.roff*, %struct.roff** %6, align 8
  %96 = getelementptr inbounds %struct.roff, %struct.roff* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @roffs, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)*, i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)** %104, align 8
  %106 = load %struct.roff*, %struct.roff** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.buf*, %struct.buf** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 %105(%struct.roff* %106, i32 %107, %struct.buf* %108, i32 %109, i32 %110, i32 %111, i32* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @ROFF_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @ROFF_IGN, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %94
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %5, align 4
  br label %426

121:                                              ; preds = %94
  %122 = load i32, i32* @ROFF_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %128

126:                                              ; preds = %91, %76
  %127 = load i32, i32* @ROFF_IGN, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %126, %121
  %129 = load %struct.roff*, %struct.roff** %6, align 8
  %130 = getelementptr inbounds %struct.roff, %struct.roff* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = load %struct.buf*, %struct.buf** %8, align 8
  %135 = getelementptr inbounds %struct.buf, %struct.buf* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load %struct.roff*, %struct.roff** %6, align 8
  %144 = getelementptr inbounds %struct.roff, %struct.roff* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.buf*, %struct.buf** %8, align 8
  %147 = getelementptr inbounds %struct.buf, %struct.buf* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i32 @eqn_read(i32* %145, i8* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %5, align 4
  br label %426

154:                                              ; preds = %133, %128
  %155 = load %struct.roff*, %struct.roff** %6, align 8
  %156 = getelementptr inbounds %struct.roff, %struct.roff* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %191

159:                                              ; preds = %154
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = load %struct.buf*, %struct.buf** %8, align 8
  %164 = getelementptr inbounds %struct.buf, %struct.buf* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %162, %159
  %173 = load %struct.roff*, %struct.roff** %6, align 8
  %174 = getelementptr inbounds %struct.roff, %struct.roff* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.buf*, %struct.buf** %8, align 8
  %178 = getelementptr inbounds %struct.buf, %struct.buf* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @tbl_read(i32* %175, i32 %176, i8* %179, i32 %180)
  %182 = load %struct.roff*, %struct.roff** %6, align 8
  %183 = getelementptr inbounds %struct.roff, %struct.roff* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.roff*, %struct.roff** %6, align 8
  %187 = getelementptr inbounds %struct.roff, %struct.roff* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @roff_addtbl(%struct.TYPE_8__* %184, i32 %185, i32* %188)
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %5, align 4
  br label %426

191:                                              ; preds = %162, %154
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %191
  %195 = load %struct.roff*, %struct.roff** %6, align 8
  %196 = load %struct.buf*, %struct.buf** %8, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @roff_parsetext(%struct.roff* %195, %struct.buf* %196, i32 %197, i32* %198)
  %200 = load i32, i32* %11, align 4
  %201 = or i32 %199, %200
  store i32 %201, i32* %5, align 4
  br label %426

202:                                              ; preds = %191
  %203 = load %struct.buf*, %struct.buf** %8, align 8
  %204 = getelementptr inbounds %struct.buf, %struct.buf* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 34
  br i1 %211, label %212, label %218

212:                                              ; preds = %202
  %213 = load i32, i32* @MANDOCERR_COMMENT_BAD, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %213, i32 %214, i32 %215, i8* null)
  %217 = load i32, i32* @ROFF_IGN, align 4
  store i32 %217, i32* %5, align 4
  br label %426

218:                                              ; preds = %202
  %219 = load %struct.buf*, %struct.buf** %8, align 8
  %220 = getelementptr inbounds %struct.buf, %struct.buf* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %218
  %229 = load i32, i32* @ROFF_IGN, align 4
  store i32 %229, i32* %5, align 4
  br label %426

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230
  %232 = load %struct.roff*, %struct.roff** %6, align 8
  %233 = getelementptr inbounds %struct.roff, %struct.roff* %232, i32 0, i32 2
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = icmp ne %struct.TYPE_6__* %234, null
  br i1 %235, label %236, label %256

236:                                              ; preds = %231
  %237 = load %struct.roff*, %struct.roff** %6, align 8
  %238 = getelementptr inbounds %struct.roff, %struct.roff* %237, i32 0, i32 2
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %10, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** @roffs, align 8
  %243 = load i32, i32* %10, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)*, i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)** %246, align 8
  %248 = load %struct.roff*, %struct.roff** %6, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.buf*, %struct.buf** %8, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load i32*, i32** %9, align 8
  %255 = call i32 %247(%struct.roff* %248, i32 %249, %struct.buf* %250, i32 %251, i32 %252, i32 %253, i32* %254)
  store i32 %255, i32* %5, align 4
  br label %426

256:                                              ; preds = %231
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %13, align 4
  %258 = load %struct.roff*, %struct.roff** %6, align 8
  %259 = load %struct.buf*, %struct.buf** %8, align 8
  %260 = getelementptr inbounds %struct.buf, %struct.buf* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @roff_parse(%struct.roff* %258, i8* %261, i32* %12, i32 %262, i32 %263)
  store i32 %264, i32* %10, align 4
  %265 = load %struct.roff*, %struct.roff** %6, align 8
  %266 = getelementptr inbounds %struct.roff, %struct.roff* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %368

269:                                              ; preds = %256
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @TOKEN_NONE, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %293, label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @ROFF_TS, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %293, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @ROFF_br, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %293, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @ROFF_ce, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %293, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* @ROFF_rj, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %293, label %289

289:                                              ; preds = %285
  %290 = load i32, i32* %10, align 4
  %291 = load i32, i32* @ROFF_sp, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %368

293:                                              ; preds = %289, %285, %281, %277, %273, %269
  %294 = load i32, i32* @MANDOCERR_TBLMACRO, align 4
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load %struct.buf*, %struct.buf** %8, align 8
  %298 = getelementptr inbounds %struct.buf, %struct.buf* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %294, i32 %295, i32 %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %302)
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @TOKEN_NONE, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %293
  %308 = load i32, i32* @ROFF_IGN, align 4
  store i32 %308, i32* %5, align 4
  br label %426

309:                                              ; preds = %293
  br label %310

310:                                              ; preds = %332, %309
  %311 = load %struct.buf*, %struct.buf** %8, align 8
  %312 = getelementptr inbounds %struct.buf, %struct.buf* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %310
  %321 = load %struct.buf*, %struct.buf** %8, align 8
  %322 = getelementptr inbounds %struct.buf, %struct.buf* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 32
  br label %330

330:                                              ; preds = %320, %310
  %331 = phi i1 [ false, %310 ], [ %329, %320 ]
  br i1 %331, label %332, label %335

332:                                              ; preds = %330
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %12, align 4
  br label %310

335:                                              ; preds = %330
  br label %336

336:                                              ; preds = %346, %335
  %337 = load %struct.buf*, %struct.buf** %8, align 8
  %338 = getelementptr inbounds %struct.buf, %struct.buf* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 32
  br i1 %345, label %346, label %349

346:                                              ; preds = %336
  %347 = load i32, i32* %12, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %12, align 4
  br label %336

349:                                              ; preds = %336
  %350 = load %struct.roff*, %struct.roff** %6, align 8
  %351 = getelementptr inbounds %struct.roff, %struct.roff* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %7, align 4
  %354 = load %struct.buf*, %struct.buf** %8, align 8
  %355 = getelementptr inbounds %struct.buf, %struct.buf* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @tbl_read(i32* %352, i32 %353, i8* %356, i32 %357)
  %359 = load %struct.roff*, %struct.roff** %6, align 8
  %360 = getelementptr inbounds %struct.roff, %struct.roff* %359, i32 0, i32 0
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = load i32, i32* %7, align 4
  %363 = load %struct.roff*, %struct.roff** %6, align 8
  %364 = getelementptr inbounds %struct.roff, %struct.roff* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @roff_addtbl(%struct.TYPE_8__* %361, i32 %362, i32* %365)
  %367 = load i32, i32* @ROFF_IGN, align 4
  store i32 %367, i32* %5, align 4
  br label %426

368:                                              ; preds = %289, %256
  %369 = load i32, i32* %15, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %405

371:                                              ; preds = %368
  %372 = load i32*, i32** @roffce_node, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %405

374:                                              ; preds = %371
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* @TOKEN_NONE, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %394, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* @ROFF_Dd, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %394, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* @ROFF_EQ, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %394, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* %10, align 4
  %388 = load i32, i32* @ROFF_TH, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %394, label %390

390:                                              ; preds = %386
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* @ROFF_TS, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %405

394:                                              ; preds = %390, %386, %382, %378, %374
  %395 = load i32*, i32** @roffce_node, align 8
  %396 = load %struct.roff*, %struct.roff** %6, align 8
  %397 = getelementptr inbounds %struct.roff, %struct.roff* %396, i32 0, i32 0
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  store i32* %395, i32** %399, align 8
  %400 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %401 = load %struct.roff*, %struct.roff** %6, align 8
  %402 = getelementptr inbounds %struct.roff, %struct.roff* %401, i32 0, i32 0
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 0
  store i32 %400, i32* %404, align 8
  store i64 0, i64* @roffce_lines, align 8
  store i32* null, i32** @roffce_node, align 8
  br label %405

405:                                              ; preds = %394, %390, %371, %368
  %406 = load i32, i32* %10, align 4
  %407 = load i32, i32* @TOKEN_NONE, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = load i32, i32* @ROFF_CONT, align 4
  store i32 %410, i32* %5, align 4
  br label %426

411:                                              ; preds = %405
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** @roffs, align 8
  %413 = load i32, i32* %10, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 2
  %417 = load i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)*, i32 (%struct.roff*, i32, %struct.buf*, i32, i32, i32, i32*)** %416, align 8
  %418 = load %struct.roff*, %struct.roff** %6, align 8
  %419 = load i32, i32* %10, align 4
  %420 = load %struct.buf*, %struct.buf** %8, align 8
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* %13, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32*, i32** %9, align 8
  %425 = call i32 %417(%struct.roff* %418, i32 %419, %struct.buf* %420, i32 %421, i32 %422, i32 %423, i32* %424)
  store i32 %425, i32* %5, align 4
  br label %426

426:                                              ; preds = %411, %409, %349, %307, %236, %228, %212, %194, %172, %142, %119, %74, %52
  %427 = load i32, i32* %5, align 4
  ret i32 %427
}

declare dso_local i32 @roff_eqndelim(%struct.roff*, %struct.buf*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @roff_expand(%struct.roff*, %struct.buf*, i32, i32, i32) #1

declare dso_local i32 @roff_getcontrol(%struct.roff*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eqn_read(i32*, i8*) #1

declare dso_local i32 @tbl_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @roff_addtbl(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @roff_parsetext(%struct.roff*, %struct.buf*, i32, i32*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @roff_parse(%struct.roff*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
