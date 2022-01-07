; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_ptext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_ptext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.roff_node*, i32 }
%struct.roff_node = type { i64, i64, i64, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)* }

@MDOC_Bl = common dso_local global i64 0, align 8
@ROFFT_BODY = common dso_local global i64 0, align 8
@ENDBODY_NOT = common dso_local global i64 0, align 8
@LIST_column = common dso_local global i64 0, align 8
@MDOC_FREECOL = common dso_local global i32 0, align 4
@MDOC_It = common dso_local global i32 0, align 4
@ROFF_NOFILL = common dso_local global i32 0, align 4
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@MANDOCERR_FI_BLANK = common dso_local global i32 0, align 4
@ROFF_sp = common dso_local global i32 0, align 4
@NODE_VALID = common dso_local global i32 0, align 4
@NODE_ENDED = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@NODE_EOS = common dso_local global i32 0, align 4
@MANDOCERR_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i8*, i32)* @mdoc_ptext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdoc_ptext(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.roff_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %17 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %16, i32 0, i32 1
  %18 = load %struct.roff_node*, %struct.roff_node** %17, align 8
  store %struct.roff_node* %18, %struct.roff_node** %10, align 8
  %19 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %20 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MDOC_Bl, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %4
  %25 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %26 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ROFFT_BODY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ENDBODY_NOT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 6
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LIST_column, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %36, %30, %24, %4
  %46 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %47 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %45
  %51 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 5
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MDOC_Bl, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %60 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %59, i32 0, i32 5
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LIST_column, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %58, %36
  %70 = load i32, i32* @MDOC_FREECOL, align 4
  %71 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %72 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @MDOC_It, align 4
  %76 = call %struct.TYPE_12__* @mdoc_macro(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)*, i32 (%struct.roff_man*, i32, i32, i32, i32*, i8*)** %77, align 8
  %79 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %80 = load i32, i32* @MDOC_It, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 %78(%struct.roff_man* %79, i32 %80, i32 %81, i32 %82, i32* %9, i8* %83)
  store i32 1, i32* %5, align 4
  br label %402

85:                                               ; preds = %58, %50, %45
  store i8* null, i8** %14, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8* %89, i8** %15, align 8
  store i8* %89, i8** %13, align 8
  br label %90

90:                                               ; preds = %131, %85
  %91 = load i8*, i8** %13, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %127 [
    i32 32, label %98
    i32 9, label %104
    i32 92, label %118
  ]

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = icmp eq i8* null, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i8*, i8** %13, align 8
  store i8* %102, i8** %14, align 8
  br label %103

103:                                              ; preds = %101, %98
  br label %131

104:                                              ; preds = %94
  %105 = load i8*, i8** %14, align 8
  %106 = icmp eq i8* null, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8*, i8** %13, align 8
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %111 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ROFF_NOFILL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %131

117:                                              ; preds = %109
  br label %128

118:                                              ; preds = %94
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %13, align 8
  br label %126

126:                                              ; preds = %123, %118
  br label %127

127:                                              ; preds = %94, %126
  store i8* null, i8** %14, align 8
  br label %128

128:                                              ; preds = %127, %117
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %15, align 8
  br label %131

131:                                              ; preds = %128, %116, %103
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  br label %90

134:                                              ; preds = %90
  %135 = load i8*, i8** %15, align 8
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i8*, i8** %14, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @mandoc_msg(i32 %139, i32 %140, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %138, %134
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %249

156:                                              ; preds = %148
  %157 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %158 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ROFF_NOFILL, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %249

163:                                              ; preds = %156
  %164 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %165 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %164, i32 0, i32 1
  %166 = load %struct.roff_node*, %struct.roff_node** %165, align 8
  %167 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  switch i64 %168, label %221 [
    i64 128, label %169
  ]

169:                                              ; preds = %163
  %170 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %171 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %170, i32 0, i32 1
  %172 = load %struct.roff_node*, %struct.roff_node** %171, align 8
  %173 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 0)
  %177 = getelementptr inbounds i8, i8* %176, i64 -2
  store i8* %177, i8** %15, align 8
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = icmp ult i8* %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %169
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 92
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load i8*, i8** %11, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 99
  br i1 %192, label %193, label %194

193:                                              ; preds = %187, %181, %169
  br label %222

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %207, %194
  %196 = load i8*, i8** %11, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = icmp ugt i8* %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 -1
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 92
  br label %205

205:                                              ; preds = %199, %195
  %206 = phi i1 [ false, %195 ], [ %204, %199 ]
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = load i8*, i8** %11, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 -1
  store i8* %209, i8** %11, align 8
  br label %195

210:                                              ; preds = %205
  %211 = load i8*, i8** %15, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = srem i64 %215, 2
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %222

219:                                              ; preds = %210
  %220 = load i8*, i8** %15, align 8
  store i8 0, i8* %220, align 1
  store i32 1, i32* %5, align 4
  br label %402

221:                                              ; preds = %163
  br label %222

222:                                              ; preds = %221, %218, %193
  %223 = load i32, i32* @MANDOCERR_FI_BLANK, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load i8*, i8** %13, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  %231 = call i32 @mandoc_msg(i32 %223, i32 %224, i32 %230, i32* null)
  %232 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @ROFF_sp, align 4
  %236 = call i32 @roff_elem_alloc(%struct.roff_man* %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* @NODE_VALID, align 4
  %238 = load i32, i32* @NODE_ENDED, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %241 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %240, i32 0, i32 1
  %242 = load %struct.roff_node*, %struct.roff_node** %241, align 8
  %243 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %239
  store i32 %245, i32* %243, align 8
  %246 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %247 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %248 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  store i32 1, i32* %5, align 4
  br label %402

249:                                              ; preds = %156, %148
  %250 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i8*, i8** %8, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = call i32 @roff_word_alloc(%struct.roff_man* %250, i32 %251, i32 %252, i8* %256)
  %258 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %259 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ROFF_NOFILL, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %249
  store i32 1, i32* %5, align 4
  br label %402

265:                                              ; preds = %249
  %266 = load i8*, i8** %8, align 8
  %267 = load i8*, i8** %15, align 8
  %268 = icmp ult i8* %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  %271 = load i8*, i8** %8, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = load i8*, i8** %15, align 8
  %276 = load i8*, i8** %8, align 8
  %277 = ptrtoint i8* %275 to i64
  %278 = ptrtoint i8* %276 to i64
  %279 = sub i64 %277, %278
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = sub nsw i64 %279, %281
  %283 = call i64 @mandoc_eos(i8* %274, i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %265
  %286 = load i32, i32* @NODE_EOS, align 4
  %287 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %288 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %287, i32 0, i32 1
  %289 = load %struct.roff_node*, %struct.roff_node** %288, align 8
  %290 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %286
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %285, %265
  %294 = load i8*, i8** %8, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  store i8* %297, i8** %13, align 8
  br label %298

298:                                              ; preds = %397, %293
  %299 = load i8*, i8** %13, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %401

301:                                              ; preds = %298
  %302 = load i8*, i8** %13, align 8
  %303 = load i8*, i8** %8, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %301
  br label %397

312:                                              ; preds = %301
  %313 = load i8*, i8** %15, align 8
  %314 = load i8*, i8** %13, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = icmp slt i64 %317, 3
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  br label %401

320:                                              ; preds = %312
  %321 = load i8*, i8** %13, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 1
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp ne i32 %324, 32
  br i1 %325, label %362, label %326

326:                                              ; preds = %320
  %327 = load i8*, i8** %13, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 -2
  %329 = load i8, i8* %328, align 1
  %330 = call i64 @isalnum(i8 zeroext %329)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %362, label %332

332:                                              ; preds = %326
  %333 = load i8*, i8** %13, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 -1
  %335 = load i8, i8* %334, align 1
  %336 = call i64 @isalnum(i8 zeroext %335)
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %362, label %338

338:                                              ; preds = %332
  %339 = load i8*, i8** %13, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 -2
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 110
  br i1 %343, label %344, label %350

344:                                              ; preds = %338
  %345 = load i8*, i8** %13, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 -1
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 99
  br i1 %349, label %362, label %350

350:                                              ; preds = %344, %338
  %351 = load i8*, i8** %13, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 -2
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp eq i32 %354, 118
  br i1 %355, label %356, label %363

356:                                              ; preds = %350
  %357 = load i8*, i8** %13, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 -1
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp eq i32 %360, 115
  br i1 %361, label %362, label %363

362:                                              ; preds = %356, %344, %332, %326, %320
  br label %397

363:                                              ; preds = %356, %350
  %364 = load i8*, i8** %13, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 2
  store i8* %365, i8** %13, align 8
  %366 = load i8*, i8** %13, align 8
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 32
  br i1 %369, label %370, label %373

370:                                              ; preds = %363
  %371 = load i8*, i8** %13, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %13, align 8
  br label %373

373:                                              ; preds = %370, %363
  %374 = load i8*, i8** %13, align 8
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 32
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = load i8*, i8** %13, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %13, align 8
  br label %381

381:                                              ; preds = %378, %373
  %382 = load i8*, i8** %13, align 8
  %383 = load i8, i8* %382, align 1
  %384 = call i64 @isupper(i8 zeroext %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %381
  %387 = load i32, i32* @MANDOCERR_EOS, align 4
  %388 = load i32, i32* %7, align 4
  %389 = load i8*, i8** %13, align 8
  %390 = load i8*, i8** %8, align 8
  %391 = ptrtoint i8* %389 to i64
  %392 = ptrtoint i8* %390 to i64
  %393 = sub i64 %391, %392
  %394 = trunc i64 %393 to i32
  %395 = call i32 @mandoc_msg(i32 %387, i32 %388, i32 %394, i32* null)
  br label %396

396:                                              ; preds = %386, %381
  br label %397

397:                                              ; preds = %396, %362, %311
  %398 = load i8*, i8** %13, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  %400 = call i8* @strchr(i8* %399, i8 signext 46)
  store i8* %400, i8** %13, align 8
  br label %298

401:                                              ; preds = %319, %298
  store i32 1, i32* %5, align 4
  br label %402

402:                                              ; preds = %401, %264, %222, %219, %69
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

declare dso_local %struct.TYPE_12__* @mdoc_macro(i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @roff_elem_alloc(%struct.roff_man*, i32, i32, i32) #1

declare dso_local i32 @roff_word_alloc(%struct.roff_man*, i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mandoc_eos(i8*, i64) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
