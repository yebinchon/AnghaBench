; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getstrn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getstrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.roff = type { %struct.roffkv*, %struct.roffkv*, %struct.TYPE_9__* }
%struct.roffkv = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.roffkv* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@ROFFDEF_USER = common dso_local global i32 0, align 4
@ROFFDEF_REN = common dso_local global i32 0, align 4
@PREDEFS_MAX = common dso_local global i32 0, align 4
@predefs = common dso_local global %struct.TYPE_10__* null, align 8
@ROFFDEF_PRE = common dso_local global i32 0, align 4
@MACROSET_MAN = common dso_local global i64 0, align 8
@MDOC_Dd = common dso_local global i32 0, align 4
@MDOC_MAX = common dso_local global i32 0, align 4
@roff_name = common dso_local global i8** null, align 8
@ROFFDEF_STD = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i64 0, align 8
@MAN_TH = common dso_local global i32 0, align 4
@MAN_MAX = common dso_local global i32 0, align 4
@ROFFDEF_ANY = common dso_local global i32 0, align 4
@ROFFDEF_UNDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.roff*, i8*, i64, i32*)* @roff_getstrn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @roff_getstrn(%struct.roff* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.roff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.roffkv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.roff*, %struct.roff** %6, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 1
  %16 = load %struct.roffkv*, %struct.roffkv** %15, align 8
  store %struct.roffkv* %16, %struct.roffkv** %10, align 8
  br label %17

17:                                               ; preds = %60, %4
  %18 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %19 = icmp ne %struct.roffkv* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %23 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @strncmp(i8* %21, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %20
  %30 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %31 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %41 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %29, %20
  br label %60

46:                                               ; preds = %39
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ROFFDEF_USER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @ROFFDEF_USER, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %56 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %5, align 8
  br label %295

59:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %62 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %61, i32 0, i32 2
  %63 = load %struct.roffkv*, %struct.roffkv** %62, align 8
  store %struct.roffkv* %63, %struct.roffkv** %10, align 8
  br label %17

64:                                               ; preds = %59, %17
  %65 = load %struct.roff*, %struct.roff** %6, align 8
  %66 = getelementptr inbounds %struct.roff, %struct.roff* %65, i32 0, i32 0
  %67 = load %struct.roffkv*, %struct.roffkv** %66, align 8
  store %struct.roffkv* %67, %struct.roffkv** %10, align 8
  br label %68

68:                                               ; preds = %111, %64
  %69 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %70 = icmp ne %struct.roffkv* %69, null
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %74 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @strncmp(i8* %72, i8* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %71
  %81 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %82 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %80
  %91 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %92 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %80, %71
  br label %111

97:                                               ; preds = %90
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ROFFDEF_REN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* @ROFFDEF_REN, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %107 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %5, align 8
  br label %295

110:                                              ; preds = %97
  store i32 1, i32* %11, align 4
  br label %115

111:                                              ; preds = %96
  %112 = load %struct.roffkv*, %struct.roffkv** %10, align 8
  %113 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %112, i32 0, i32 2
  %114 = load %struct.roffkv*, %struct.roffkv** %113, align 8
  store %struct.roffkv* %114, %struct.roffkv** %10, align 8
  br label %68

115:                                              ; preds = %110, %68
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %160, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @PREDEFS_MAX, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %163

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @predefs, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @strncmp(i8* %121, i8* %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %120
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @predefs, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131, %120
  br label %160

144:                                              ; preds = %131
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ROFFDEF_PRE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load i32, i32* @ROFFDEF_PRE, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** @predefs, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %5, align 8
  br label %295

159:                                              ; preds = %144
  store i32 1, i32* %11, align 4
  br label %163

160:                                              ; preds = %143
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %116

163:                                              ; preds = %159, %116
  %164 = load %struct.roff*, %struct.roff** %6, align 8
  %165 = getelementptr inbounds %struct.roff, %struct.roff* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @MACROSET_MAN, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %214

172:                                              ; preds = %163
  %173 = load i32, i32* @MDOC_Dd, align 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %210, %172
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @MDOC_MAX, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %178, label %213

178:                                              ; preds = %174
  %179 = load i8*, i8** %7, align 8
  %180 = load i8**, i8*** @roff_name, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = call i64 @strncmp(i8* %179, i8* %184, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %178
  %189 = load i8**, i8*** @roff_name, align 8
  %190 = load i32, i32* %13, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188, %178
  br label %210

200:                                              ; preds = %188
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ROFFDEF_STD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i32, i32* @ROFFDEF_STD, align 4
  %208 = load i32*, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  store i8* null, i8** %5, align 8
  br label %295

209:                                              ; preds = %200
  store i32 1, i32* %11, align 4
  br label %213

210:                                              ; preds = %199
  %211 = load i32, i32* %13, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %13, align 4
  br label %174

213:                                              ; preds = %209, %174
  br label %214

214:                                              ; preds = %213, %163
  %215 = load %struct.roff*, %struct.roff** %6, align 8
  %216 = getelementptr inbounds %struct.roff, %struct.roff* %215, i32 0, i32 2
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @MACROSET_MDOC, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %265

223:                                              ; preds = %214
  %224 = load i32, i32* @MAN_TH, align 4
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %261, %223
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @MAN_MAX, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %225
  %230 = load i8*, i8** %7, align 8
  %231 = load i8**, i8*** @roff_name, align 8
  %232 = load i32, i32* %13, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %8, align 8
  %237 = call i64 @strncmp(i8* %230, i8* %235, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %229
  %240 = load i8**, i8*** @roff_name, align 8
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load i64, i64* %8, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %239, %229
  br label %261

251:                                              ; preds = %239
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ROFFDEF_STD, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load i32, i32* @ROFFDEF_STD, align 4
  %259 = load i32*, i32** %9, align 8
  store i32 %258, i32* %259, align 4
  store i8* null, i8** %5, align 8
  br label %295

260:                                              ; preds = %251
  store i32 1, i32* %11, align 4
  br label %264

261:                                              ; preds = %250
  %262 = load i32, i32* %13, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %225

264:                                              ; preds = %260, %225
  br label %265

265:                                              ; preds = %264, %214
  %266 = load i32, i32* %11, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %293

268:                                              ; preds = %265
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @ROFFDEF_ANY, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %268
  %274 = load i32*, i32** %9, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @ROFFDEF_REN, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i32, i32* @ROFFDEF_UNDEF, align 4
  %281 = load i32*, i32** %9, align 8
  store i32 %280, i32* %281, align 4
  store i8* null, i8** %5, align 8
  br label %295

282:                                              ; preds = %273
  %283 = load %struct.roff*, %struct.roff** %6, align 8
  %284 = getelementptr inbounds %struct.roff, %struct.roff* %283, i32 0, i32 1
  %285 = load i8*, i8** %7, align 8
  %286 = load i64, i64* %8, align 8
  %287 = call i32 @roff_setstrn(%struct.roffkv** %284, i8* %285, i64 %286, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %288 = load %struct.roff*, %struct.roff** %6, align 8
  %289 = getelementptr inbounds %struct.roff, %struct.roff* %288, i32 0, i32 0
  %290 = load i8*, i8** %7, align 8
  %291 = load i64, i64* %8, align 8
  %292 = call i32 @roff_setstrn(%struct.roffkv** %289, i8* %290, i64 %291, i8* null, i32 0, i32 0)
  br label %293

293:                                              ; preds = %282, %268, %265
  %294 = load i32*, i32** %9, align 8
  store i32 0, i32* %294, align 4
  store i8* null, i8** %5, align 8
  br label %295

295:                                              ; preds = %293, %279, %257, %206, %150, %103, %52
  %296 = load i8*, i8** %5, align 8
  ret i8* %296
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @roff_setstrn(%struct.roffkv**, i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
