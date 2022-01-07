; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_buf_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_buf_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32, i32, i32, %struct.buf*, %struct.buf*, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.buf = type { i32, i8*, %struct.buf* }

@MPARSE_UTF8 = common dso_local global i32 0, align 4
@MPARSE_LATIN1 = common dso_local global i32 0, align 4
@MANDOCERR_CHAR_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@MANDOCERR_CHAR_UNSUPP = common dso_local global i32 0, align 4
@ROFF_APPEND = common dso_local global i32 0, align 4
@ROFF_USERCALL = common dso_local global i32 0, align 4
@ROFF_MASK = common dso_local global i32 0, align 4
@ROFF_USERRET = common dso_local global i32 0, align 4
@ROFF_LOOPMASK = common dso_local global i32 0, align 4
@MANDOCERR_WHILE_NEST = common dso_local global i32 0, align 4
@MANDOCERR_WHILE_FAIL = common dso_local global i32 0, align 4
@MANDOCERR_WHILE_INTO = common dso_local global i32 0, align 4
@MACROSET_NONE = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i32 0, align 4
@REPARSE_LIMIT = common dso_local global i64 0, align 8
@MANDOCERR_ROFFLOOP = common dso_local global i32 0, align 4
@MPARSE_SO = common dso_local global i32 0, align 4
@MANDOCERR_SO_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c".so %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c".sp\0ASee the file %s.\0A.sp\00", align 1
@MANDOCERR_WHILE_OUTOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mparse*, %struct.buf*, i64, i32)* @mparse_buf_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mparse_buf_r(%struct.mparse* %0, %struct.buf* byval(%struct.buf) align 8 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mparse*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.mparse* %0, %struct.mparse** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 %3, i32* %7, align 4
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  store i32 256, i32* %22, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @mandoc_malloc(i32 %24)
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 2
  store %struct.buf* null, %struct.buf** %27, align 8
  store %struct.buf* null, %struct.buf** %12, align 8
  store %struct.buf* null, %struct.buf** %10, align 8
  store %struct.buf* null, %struct.buf** %9, align 8
  %28 = load %struct.mparse*, %struct.mparse** %5, align 8
  %29 = getelementptr inbounds %struct.mparse, %struct.mparse* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %18, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %20, align 4
  store i32 135, i32* %16, align 4
  br label %31

31:                                               ; preds = %677, %4
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i1 [ true, %37 ], [ %47, %45 ]
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi i1 [ false, %31 ], [ %49, %48 ]
  br i1 %51, label %52, label %680

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.mparse*, %struct.mparse** %5, align 8
  %58 = getelementptr inbounds %struct.mparse, %struct.mparse* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mparse*, %struct.mparse** %5, align 8
  %60 = getelementptr inbounds %struct.mparse, %struct.mparse* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %18, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load %struct.mparse*, %struct.mparse** %5, align 8
  %65 = getelementptr inbounds %struct.mparse, %struct.mparse* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MPARSE_UTF8, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.mparse*, %struct.mparse** %5, align 8
  %72 = getelementptr inbounds %struct.mparse, %struct.mparse* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MPARSE_LATIN1, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @preconv_cue(%struct.buf* %1, i64 %78)
  %80 = load %struct.mparse*, %struct.mparse** %5, align 8
  %81 = getelementptr inbounds %struct.mparse, %struct.mparse* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %70, %63, %55
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %240, %239, %190, %83
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i1 [ true, %90 ], [ %100, %93 ]
  br label %103

103:                                              ; preds = %101, %84
  %104 = phi i1 [ false, %84 ], [ %102, %101 ]
  br i1 %104, label %105, label %252

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 13, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %105
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 10, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %6, align 8
  br label %132

132:                                              ; preds = %129, %120, %113, %105
  %133 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 10, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %6, align 8
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %252

145:                                              ; preds = %132
  %146 = load i64, i64* %14, align 8
  %147 = add i64 %146, 12
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = icmp ugt i64 %147, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @resize_buf(%struct.buf* %8, i32 256)
  br label %154

154:                                              ; preds = %152, %145
  %155 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i8, i8* %158, align 1
  store i8 %159, i8* %21, align 1
  %160 = load i8, i8* %21, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 128
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %154
  %165 = load %struct.mparse*, %struct.mparse** %5, align 8
  %166 = getelementptr inbounds %struct.mparse, %struct.mparse* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.mparse*, %struct.mparse** %5, align 8
  %171 = getelementptr inbounds %struct.mparse, %struct.mparse* %170, i32 0, i32 1
  %172 = call i64 @preconv_encode(%struct.buf* %1, i64* %6, %struct.buf* %8, i64* %14, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* @MANDOCERR_CHAR_BAD, align 4
  %176 = load %struct.mparse*, %struct.mparse** %5, align 8
  %177 = getelementptr inbounds %struct.mparse, %struct.mparse* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i8, i8* %21, align 1
  %181 = zext i8 %180 to i32
  %182 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %175, i32 %178, i64 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %181)
  %183 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %14, align 8
  %187 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8 63, i8* %187, align 1
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %6, align 8
  br label %190

190:                                              ; preds = %174, %169
  br label %84

191:                                              ; preds = %154
  %192 = load i8, i8* %21, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 127
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i8, i8* %21, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp slt i32 %197, 32
  br i1 %198, label %199, label %240

199:                                              ; preds = %195
  %200 = load i8, i8* %21, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp ne i32 %201, 9
  br i1 %202, label %203, label %240

203:                                              ; preds = %199, %191
  %204 = load i8, i8* %21, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %203
  %208 = load i8, i8* %21, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 4
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i8, i8* %21, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp sgt i32 %213, 10
  br i1 %214, label %215, label %217

215:                                              ; preds = %211, %207, %203
  %216 = load i32, i32* @MANDOCERR_CHAR_BAD, align 4
  br label %219

217:                                              ; preds = %211
  %218 = load i32, i32* @MANDOCERR_CHAR_UNSUPP, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %221 = load %struct.mparse*, %struct.mparse** %5, align 8
  %222 = getelementptr inbounds %struct.mparse, %struct.mparse* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load i8, i8* %21, align 1
  %226 = zext i8 %225 to i32
  %227 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %220, i32 %223, i64 %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load i64, i64* %6, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %6, align 8
  %230 = load i8, i8* %21, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %231, 13
  br i1 %232, label %233, label %239

233:                                              ; preds = %219
  %234 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %14, align 8
  %238 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8 63, i8* %238, align 1
  br label %239

239:                                              ; preds = %233, %219
  br label %84

240:                                              ; preds = %199, %195
  %241 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %6, align 8
  %245 = getelementptr inbounds i8, i8* %242, i64 %243
  %246 = load i8, i8* %245, align 1
  %247 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = load i64, i64* %14, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %14, align 8
  %251 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8 %246, i8* %251, align 1
  br label %84

252:                                              ; preds = %140, %103
  %253 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = load i64, i64* %14, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 0, i8* %256, align 1
  %257 = call i8* @mandoc_malloc(i32 24)
  %258 = bitcast i8* %257 to %struct.buf*
  store %struct.buf* %258, %struct.buf** %11, align 8
  %259 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @mandoc_strdup(i8* %260)
  %262 = load %struct.buf*, %struct.buf** %11, align 8
  %263 = getelementptr inbounds %struct.buf, %struct.buf* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i8* @strlen(i8* %265)
  %267 = getelementptr i8, i8* %266, i64 1
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.buf*, %struct.buf** %11, align 8
  %270 = getelementptr inbounds %struct.buf, %struct.buf* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.buf*, %struct.buf** %11, align 8
  %272 = getelementptr inbounds %struct.buf, %struct.buf* %271, i32 0, i32 2
  store %struct.buf* null, %struct.buf** %272, align 8
  %273 = load %struct.buf*, %struct.buf** %9, align 8
  %274 = icmp eq %struct.buf* %273, null
  br i1 %274, label %275, label %286

275:                                              ; preds = %252
  %276 = load %struct.buf*, %struct.buf** %11, align 8
  store %struct.buf* %276, %struct.buf** %10, align 8
  store %struct.buf* %276, %struct.buf** %9, align 8
  %277 = load %struct.mparse*, %struct.mparse** %5, align 8
  %278 = getelementptr inbounds %struct.mparse, %struct.mparse* %277, i32 0, i32 3
  %279 = load %struct.buf*, %struct.buf** %278, align 8
  %280 = icmp eq %struct.buf* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load %struct.buf*, %struct.buf** %9, align 8
  %283 = load %struct.mparse*, %struct.mparse** %5, align 8
  %284 = getelementptr inbounds %struct.mparse, %struct.mparse* %283, i32 0, i32 3
  store %struct.buf* %282, %struct.buf** %284, align 8
  br label %285

285:                                              ; preds = %281, %275
  br label %291

286:                                              ; preds = %252
  %287 = load %struct.buf*, %struct.buf** %11, align 8
  %288 = load %struct.buf*, %struct.buf** %10, align 8
  %289 = getelementptr inbounds %struct.buf, %struct.buf* %288, i32 0, i32 2
  store %struct.buf* %287, %struct.buf** %289, align 8
  %290 = load %struct.buf*, %struct.buf** %11, align 8
  store %struct.buf* %290, %struct.buf** %10, align 8
  br label %291

291:                                              ; preds = %286, %285
  %292 = load i64, i64* %6, align 8
  %293 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = icmp eq i64 %292, %295
  br i1 %296, label %305, label %297

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load i64, i64* %6, align 8
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %324

305:                                              ; preds = %297, %291
  %306 = load i64, i64* %14, align 8
  %307 = add i64 %306, 2
  %308 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = icmp ugt i64 %307, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %305
  %313 = call i32 @resize_buf(%struct.buf* %8, i32 256)
  br label %314

314:                                              ; preds = %312, %305
  %315 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = load i64, i64* %14, align 8
  %318 = add i64 %317, 1
  store i64 %318, i64* %14, align 8
  %319 = getelementptr inbounds i8, i8* %316, i64 %317
  store i8 10, i8* %319, align 1
  %320 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = load i64, i64* %14, align 8
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  store i8 0, i8* %323, align 1
  br label %324

324:                                              ; preds = %314, %297
  store i32 0, i32* %17, align 4
  br label %325

325:                                              ; preds = %658, %492, %324
  %326 = load %struct.mparse*, %struct.mparse** %5, align 8
  %327 = getelementptr inbounds %struct.mparse, %struct.mparse* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.mparse*, %struct.mparse** %5, align 8
  %330 = getelementptr inbounds %struct.mparse, %struct.mparse* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @roff_parseln(i32 %328, i32 %331, %struct.buf* %8, i32* %17)
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* @ROFF_APPEND, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %325
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* @ROFF_APPEND, align 4
  %340 = or i32 134, %339
  %341 = icmp eq i32 %338, %340
  %342 = zext i1 %341 to i32
  %343 = call i32 @assert(i32 %342)
  br label %344

344:                                              ; preds = %337, %325
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* @ROFF_USERCALL, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %344
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* @ROFF_MASK, align 4
  %352 = and i32 %350, %351
  %353 = icmp eq i32 %352, 131
  %354 = zext i1 %353 to i32
  %355 = call i32 @assert(i32 %354)
  br label %356

356:                                              ; preds = %349, %344
  %357 = load i32, i32* %15, align 4
  %358 = load i32, i32* @ROFF_USERRET, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %373

361:                                              ; preds = %356
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* @ROFF_USERRET, align 4
  %364 = or i32 134, %363
  %365 = icmp eq i32 %362, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = load i32, i32* %7, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %361
  %371 = load i32, i32* @ROFF_USERRET, align 4
  store i32 %371, i32* %16, align 4
  br label %681

372:                                              ; preds = %361
  br label %373

373:                                              ; preds = %372, %356
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* @ROFF_LOOPMASK, align 4
  %376 = and i32 %374, %375
  switch i32 %376, label %437 [
    i32 134, label %377
    i32 128, label %378
    i32 133, label %401
    i32 132, label %401
  ]

377:                                              ; preds = %373
  br label %439

378:                                              ; preds = %373
  %379 = load %struct.mparse*, %struct.mparse** %5, align 8
  %380 = getelementptr inbounds %struct.mparse, %struct.mparse* %379, i32 0, i32 4
  %381 = load %struct.buf*, %struct.buf** %380, align 8
  %382 = icmp ne %struct.buf* %381, null
  br i1 %382, label %383, label %397

383:                                              ; preds = %378
  %384 = load %struct.buf*, %struct.buf** %12, align 8
  %385 = load %struct.mparse*, %struct.mparse** %5, align 8
  %386 = getelementptr inbounds %struct.mparse, %struct.mparse* %385, i32 0, i32 4
  %387 = load %struct.buf*, %struct.buf** %386, align 8
  %388 = icmp eq %struct.buf* %384, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %383
  br label %439

390:                                              ; preds = %383
  %391 = load i32, i32* @MANDOCERR_WHILE_NEST, align 4
  %392 = load %struct.mparse*, %struct.mparse** %5, align 8
  %393 = getelementptr inbounds %struct.mparse, %struct.mparse* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i64, i64* %14, align 8
  %396 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %391, i32 %394, i64 %395, i8* null)
  br label %397

397:                                              ; preds = %390, %378
  %398 = load %struct.buf*, %struct.buf** %11, align 8
  %399 = load %struct.mparse*, %struct.mparse** %5, align 8
  %400 = getelementptr inbounds %struct.mparse, %struct.mparse* %399, i32 0, i32 4
  store %struct.buf* %398, %struct.buf** %400, align 8
  store %struct.buf* null, %struct.buf** %12, align 8
  store i32 1, i32* %20, align 4
  br label %439

401:                                              ; preds = %373, %373
  %402 = load %struct.mparse*, %struct.mparse** %5, align 8
  %403 = getelementptr inbounds %struct.mparse, %struct.mparse* %402, i32 0, i32 4
  %404 = load %struct.buf*, %struct.buf** %403, align 8
  %405 = icmp eq %struct.buf* %404, null
  br i1 %405, label %406, label %413

406:                                              ; preds = %401
  %407 = load i32, i32* @MANDOCERR_WHILE_FAIL, align 4
  %408 = load %struct.mparse*, %struct.mparse** %5, align 8
  %409 = getelementptr inbounds %struct.mparse, %struct.mparse* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i64, i64* %14, align 8
  %412 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %407, i32 %410, i64 %411, i8* null)
  br label %439

413:                                              ; preds = %401
  %414 = load i32, i32* %20, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %425

416:                                              ; preds = %413
  %417 = load i32, i32* @MANDOCERR_WHILE_INTO, align 4
  %418 = load %struct.mparse*, %struct.mparse** %5, align 8
  %419 = getelementptr inbounds %struct.mparse, %struct.mparse* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i64, i64* %14, align 8
  %422 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %417, i32 %420, i64 %421, i8* null)
  store %struct.buf* null, %struct.buf** %12, align 8
  %423 = load %struct.mparse*, %struct.mparse** %5, align 8
  %424 = getelementptr inbounds %struct.mparse, %struct.mparse* %423, i32 0, i32 4
  store %struct.buf* null, %struct.buf** %424, align 8
  br label %439

425:                                              ; preds = %413
  %426 = load i32, i32* %15, align 4
  %427 = and i32 %426, 133
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %425
  %430 = load %struct.mparse*, %struct.mparse** %5, align 8
  %431 = getelementptr inbounds %struct.mparse, %struct.mparse* %430, i32 0, i32 4
  %432 = load %struct.buf*, %struct.buf** %431, align 8
  store %struct.buf* %432, %struct.buf** %12, align 8
  br label %436

433:                                              ; preds = %425
  store %struct.buf* null, %struct.buf** %12, align 8
  %434 = load %struct.mparse*, %struct.mparse** %5, align 8
  %435 = getelementptr inbounds %struct.mparse, %struct.mparse* %434, i32 0, i32 4
  store %struct.buf* null, %struct.buf** %435, align 8
  store i32 0, i32* %20, align 4
  br label %436

436:                                              ; preds = %433, %429
  br label %439

437:                                              ; preds = %373
  %438 = call i32 (...) @abort() #3
  unreachable

439:                                              ; preds = %436, %416, %406, %397, %389, %377
  %440 = load i32, i32* %15, align 4
  %441 = load i32, i32* @ROFF_MASK, align 4
  %442 = and i32 %440, %441
  switch i32 %442, label %621 [
    i32 134, label %443
    i32 135, label %444
    i32 130, label %492
    i32 131, label %493
    i32 129, label %535
  ]

443:                                              ; preds = %439
  br label %623

444:                                              ; preds = %439
  %445 = load %struct.mparse*, %struct.mparse** %5, align 8
  %446 = getelementptr inbounds %struct.mparse, %struct.mparse* %445, i32 0, i32 5
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @MACROSET_NONE, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %444
  %454 = load %struct.mparse*, %struct.mparse** %5, align 8
  %455 = call i32 @choose_parser(%struct.mparse* %454)
  br label %456

456:                                              ; preds = %453, %444
  %457 = load %struct.mparse*, %struct.mparse** %5, align 8
  %458 = getelementptr inbounds %struct.mparse, %struct.mparse* %457, i32 0, i32 5
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @MACROSET_MDOC, align 4
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %476

465:                                              ; preds = %456
  %466 = load %struct.mparse*, %struct.mparse** %5, align 8
  %467 = getelementptr inbounds %struct.mparse, %struct.mparse* %466, i32 0, i32 5
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %467, align 8
  %469 = load %struct.mparse*, %struct.mparse** %5, align 8
  %470 = getelementptr inbounds %struct.mparse, %struct.mparse* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %17, align 4
  %475 = call i32 @mdoc_parseln(%struct.TYPE_5__* %468, i32 %471, i8* %473, i32 %474)
  br label %487

476:                                              ; preds = %456
  %477 = load %struct.mparse*, %struct.mparse** %5, align 8
  %478 = getelementptr inbounds %struct.mparse, %struct.mparse* %477, i32 0, i32 5
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** %478, align 8
  %480 = load %struct.mparse*, %struct.mparse** %5, align 8
  %481 = getelementptr inbounds %struct.mparse, %struct.mparse* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %484 = load i8*, i8** %483, align 8
  %485 = load i32, i32* %17, align 4
  %486 = call i32 @man_parseln(%struct.TYPE_5__* %479, i32 %482, i8* %484, i32 %485)
  br label %487

487:                                              ; preds = %476, %465
  %488 = phi i32 [ %475, %465 ], [ %486, %476 ]
  %489 = icmp eq i32 %488, 2
  br i1 %489, label %490, label %491

490:                                              ; preds = %487
  br label %681

491:                                              ; preds = %487
  br label %623

492:                                              ; preds = %439
  br label %325

493:                                              ; preds = %439
  %494 = load %struct.mparse*, %struct.mparse** %5, align 8
  %495 = getelementptr inbounds %struct.mparse, %struct.mparse* %494, i32 0, i32 7
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %496, 1
  store i64 %497, i64* %495, align 8
  %498 = load i64, i64* @REPARSE_LIMIT, align 8
  %499 = icmp sgt i64 %497, %498
  br i1 %499, label %500, label %507

500:                                              ; preds = %493
  store i32 134, i32* %16, align 4
  %501 = load i32, i32* @MANDOCERR_ROFFLOOP, align 4
  %502 = load %struct.mparse*, %struct.mparse** %5, align 8
  %503 = getelementptr inbounds %struct.mparse, %struct.mparse* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i64, i64* %14, align 8
  %506 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %501, i32 %504, i64 %505, i8* null)
  br label %681

507:                                              ; preds = %493
  %508 = load %struct.mparse*, %struct.mparse** %5, align 8
  %509 = load i32, i32* %17, align 4
  %510 = sext i32 %509 to i64
  %511 = call i32 @mparse_buf_r(%struct.mparse* %508, %struct.buf* byval(%struct.buf) align 8 %8, i64 %510, i32 0)
  store i32 %511, i32* %16, align 4
  %512 = load i32, i32* %15, align 4
  %513 = load i32, i32* @ROFF_USERCALL, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %527

516:                                              ; preds = %507
  %517 = load %struct.mparse*, %struct.mparse** %5, align 8
  %518 = getelementptr inbounds %struct.mparse, %struct.mparse* %517, i32 0, i32 6
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @roff_userret(i32 %519)
  %521 = load i32, i32* %16, align 4
  %522 = load i32, i32* @ROFF_USERRET, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %516
  store i32 135, i32* %16, align 4
  br label %526

526:                                              ; preds = %525, %516
  br label %527

527:                                              ; preds = %526, %507
  %528 = load i32, i32* %7, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %527
  %531 = load i32, i32* %16, align 4
  %532 = icmp ne i32 %531, 135
  br i1 %532, label %533, label %534

533:                                              ; preds = %530
  br label %681

534:                                              ; preds = %530, %527
  br label %623

535:                                              ; preds = %439
  %536 = load %struct.mparse*, %struct.mparse** %5, align 8
  %537 = getelementptr inbounds %struct.mparse, %struct.mparse* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @MPARSE_SO, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %568, label %542

542:                                              ; preds = %535
  %543 = load i64, i64* %6, align 8
  %544 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = sext i32 %545 to i64
  %547 = icmp uge i64 %543, %546
  br i1 %547, label %556, label %548

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.buf, %struct.buf* %1, i32 0, i32 1
  %550 = load i8*, i8** %549, align 8
  %551 = load i64, i64* %6, align 8
  %552 = getelementptr inbounds i8, i8* %550, i64 %551
  %553 = load i8, i8* %552, align 1
  %554 = sext i8 %553 to i32
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %568

556:                                              ; preds = %548, %542
  %557 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %558 = load i8*, i8** %557, align 8
  %559 = load i32, i32* %17, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8, i8* %558, i64 %560
  %562 = call i8* @mandoc_strdup(i8* %561)
  %563 = load %struct.mparse*, %struct.mparse** %5, align 8
  %564 = getelementptr inbounds %struct.mparse, %struct.mparse* %563, i32 0, i32 5
  %565 = load %struct.TYPE_5__*, %struct.TYPE_5__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 0
  store i8* %562, i8** %567, align 8
  br label %681

568:                                              ; preds = %548, %535
  %569 = load %struct.mparse*, %struct.mparse** %5, align 8
  %570 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %571 = load i8*, i8** %570, align 8
  %572 = load i32, i32* %17, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, i8* %571, i64 %573
  %575 = call i32 @mparse_open(%struct.mparse* %569, i8* %574)
  store i32 %575, i32* %19, align 4
  %576 = icmp ne i32 %575, -1
  br i1 %576, label %577, label %588

577:                                              ; preds = %568
  %578 = load %struct.mparse*, %struct.mparse** %5, align 8
  %579 = load i32, i32* %19, align 4
  %580 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %581 = load i8*, i8** %580, align 8
  %582 = load i32, i32* %17, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, i8* %581, i64 %583
  %585 = call i32 @mparse_readfd(%struct.mparse* %578, i32 %579, i8* %584)
  %586 = load i32, i32* %19, align 4
  %587 = call i32 @close(i32 %586)
  br label %620

588:                                              ; preds = %568
  %589 = load i32, i32* @MANDOCERR_SO_FAIL, align 4
  %590 = load %struct.mparse*, %struct.mparse** %5, align 8
  %591 = getelementptr inbounds %struct.mparse, %struct.mparse* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = load i32, i32* %17, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %596 = load i8*, i8** %595, align 8
  %597 = load i32, i32* %17, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8, i8* %596, i64 %598
  %600 = load i32, i32* @errno, align 4
  %601 = call i32 @strerror(i32 %600)
  %602 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %589, i32 %592, i64 %594, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %599, i32 %601)
  %603 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %604 = load i8*, i8** %603, align 8
  %605 = load i32, i32* %17, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %604, i64 %606
  %608 = call i64 @mandoc_asprintf(i8** %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %607)
  %609 = trunc i64 %608 to i32
  %610 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  store i32 %609, i32* %610, align 8
  %611 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 @free(i8* %612)
  %614 = load i8*, i8** %13, align 8
  %615 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  store i8* %614, i8** %615, align 8
  store i32 0, i32* %17, align 4
  %616 = load %struct.mparse*, %struct.mparse** %5, align 8
  %617 = load i32, i32* %17, align 4
  %618 = sext i32 %617 to i64
  %619 = call i32 @mparse_buf_r(%struct.mparse* %616, %struct.buf* byval(%struct.buf) align 8 %8, i64 %618, i32 0)
  br label %620

620:                                              ; preds = %588, %577
  br label %623

621:                                              ; preds = %439
  %622 = call i32 (...) @abort() #3
  unreachable

623:                                              ; preds = %620, %534, %491, %443
  %624 = load %struct.buf*, %struct.buf** %12, align 8
  %625 = icmp ne %struct.buf* %624, null
  br i1 %625, label %626, label %635

626:                                              ; preds = %623
  %627 = load i32, i32* %15, align 4
  %628 = load i32, i32* @ROFF_LOOPMASK, align 4
  %629 = and i32 %627, %628
  %630 = icmp eq i32 %629, 134
  br i1 %630, label %631, label %635

631:                                              ; preds = %626
  %632 = load %struct.buf*, %struct.buf** %12, align 8
  %633 = getelementptr inbounds %struct.buf, %struct.buf* %632, i32 0, i32 2
  %634 = load %struct.buf*, %struct.buf** %633, align 8
  store %struct.buf* %634, %struct.buf** %12, align 8
  br label %635

635:                                              ; preds = %631, %626, %623
  %636 = load %struct.buf*, %struct.buf** %12, align 8
  %637 = icmp ne %struct.buf* %636, null
  br i1 %637, label %638, label %667

638:                                              ; preds = %635
  %639 = load i32, i32* %15, align 4
  %640 = load i32, i32* @ROFF_APPEND, align 4
  %641 = and i32 %639, %640
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %646

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %645 = load i8*, i8** %644, align 8
  store i8 0, i8* %645, align 1
  br label %646

646:                                              ; preds = %643, %638
  %647 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = load %struct.buf*, %struct.buf** %12, align 8
  %650 = getelementptr inbounds %struct.buf, %struct.buf* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = icmp slt i32 %648, %651
  br i1 %652, label %653, label %658

653:                                              ; preds = %646
  %654 = load %struct.buf*, %struct.buf** %12, align 8
  %655 = getelementptr inbounds %struct.buf, %struct.buf* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = call i32 @resize_buf(%struct.buf* %8, i32 %656)
  br label %658

658:                                              ; preds = %653, %646
  %659 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %660 = load i8*, i8** %659, align 8
  %661 = load %struct.buf*, %struct.buf** %12, align 8
  %662 = getelementptr inbounds %struct.buf, %struct.buf* %661, i32 0, i32 1
  %663 = load i8*, i8** %662, align 8
  %664 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = call i32 @strlcat(i8* %660, i8* %663, i32 %665)
  store i32 0, i32* %17, align 4
  br label %325

667:                                              ; preds = %635
  %668 = load i32, i32* %15, align 4
  %669 = load i32, i32* @ROFF_APPEND, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %674 = load i8*, i8** %673, align 8
  %675 = call i8* @strlen(i8* %674)
  br label %677

676:                                              ; preds = %667
  br label %677

677:                                              ; preds = %676, %672
  %678 = phi i8* [ %675, %672 ], [ null, %676 ]
  %679 = ptrtoint i8* %678 to i64
  store i64 %679, i64* %14, align 8
  br label %31

680:                                              ; preds = %50
  br label %681

681:                                              ; preds = %680, %556, %533, %500, %490, %370
  %682 = load i32, i32* %20, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %698

684:                                              ; preds = %681
  %685 = load i32, i32* %16, align 4
  %686 = load i32, i32* @ROFF_USERRET, align 4
  %687 = icmp ne i32 %685, %686
  br i1 %687, label %688, label %695

688:                                              ; preds = %684
  %689 = load i32, i32* @MANDOCERR_WHILE_OUTOF, align 4
  %690 = load %struct.mparse*, %struct.mparse** %5, align 8
  %691 = getelementptr inbounds %struct.mparse, %struct.mparse* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = load i64, i64* %14, align 8
  %694 = call i32 (i32, i32, i64, i8*, ...) @mandoc_msg(i32 %689, i32 %692, i64 %693, i8* null)
  br label %695

695:                                              ; preds = %688, %684
  %696 = load %struct.mparse*, %struct.mparse** %5, align 8
  %697 = getelementptr inbounds %struct.mparse, %struct.mparse* %696, i32 0, i32 4
  store %struct.buf* null, %struct.buf** %697, align 8
  br label %698

698:                                              ; preds = %695, %681
  %699 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 1
  %700 = load i8*, i8** %699, align 8
  %701 = call i32 @free(i8* %700)
  %702 = load %struct.buf*, %struct.buf** %9, align 8
  %703 = load %struct.mparse*, %struct.mparse** %5, align 8
  %704 = getelementptr inbounds %struct.mparse, %struct.mparse* %703, i32 0, i32 3
  %705 = load %struct.buf*, %struct.buf** %704, align 8
  %706 = icmp ne %struct.buf* %702, %705
  br i1 %706, label %707, label %710

707:                                              ; preds = %698
  %708 = load %struct.buf*, %struct.buf** %9, align 8
  %709 = call i32 @free_buf_list(%struct.buf* %708)
  br label %710

710:                                              ; preds = %707, %698
  %711 = load i32, i32* %16, align 4
  ret i32 %711
}

declare dso_local i8* @mandoc_malloc(i32) #1

declare dso_local i32 @preconv_cue(%struct.buf*, i64) #1

declare dso_local i32 @resize_buf(%struct.buf*, i32) #1

declare dso_local i64 @preconv_encode(%struct.buf*, i64*, %struct.buf*, i64*, i32*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i64, i8*, ...) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @roff_parseln(i32, i32, %struct.buf*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @choose_parser(%struct.mparse*) #1

declare dso_local i32 @mdoc_parseln(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @man_parseln(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @roff_userret(i32) #1

declare dso_local i32 @mparse_open(%struct.mparse*, i8*) #1

declare dso_local i32 @mparse_readfd(%struct.mparse*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @mandoc_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @free_buf_list(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
