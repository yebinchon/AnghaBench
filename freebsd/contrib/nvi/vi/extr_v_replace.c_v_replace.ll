; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_replace.c_v_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_replace.c_v_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_36__, %struct.TYPE_36__, %struct.TYPE_35__ }
%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_41__ = type { i32, i64, i32 }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_39__ = type { i64, i32, i32 }

@DBG_FATAL = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"186|No characters to replace\00", align 1
@VC_C1SET = common dso_local global i32 0, align 4
@VC_ISDOT = common dso_local global i32 0, align 4
@SM_REPLACE = common dso_local global i32 0, align 4
@K_VLNEXT = common dso_local global i64 0, align 8
@K_ESCAPE = common dso_local global i64 0, align 8
@SC_EXIT_FORCE = common dso_local global i32 0, align 4
@VIM_WRESIZE = common dso_local global i32 0, align 4
@K_CR = common dso_local global i64 0, align 8
@K_NL = common dso_local global i64 0, align 8
@O_AUTOINDENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_replace(%struct.TYPE_40__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_41__, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %17 = call %struct.TYPE_37__* @VIP(%struct.TYPE_40__* %16)
  store %struct.TYPE_37__* %17, %struct.TYPE_37__** %7, align 8
  %18 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @DBG_FATAL, align 4
  %24 = call i64 @db_get(%struct.TYPE_40__* %18, i64 %22, i32 %23, i32** %15, i64* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %349

27:                                               ; preds = %2
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %32 = load i32, i32* @M_BERR, align 4
  %33 = call i32 @msgq(%struct.TYPE_40__* %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %349

34:                                               ; preds = %27
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %36 = load i32, i32* @VC_C1SET, align 4
  %37 = call i64 @F_ISSET(%struct.TYPE_38__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 1, %43 ]
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  %53 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = sub i64 %59, 1
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = sub i64 %68, 1
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 3
  %75 = call i32 @v_eol(%struct.TYPE_40__* %72, %struct.TYPE_35__* %74)
  store i32 1, i32* %3, align 4
  br label %349

76:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %78 = load i32, i32* @VC_ISDOT, align 4
  %79 = call i64 @F_ISSET(%struct.TYPE_38__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %142, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @SM_REPLACE, align 4
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %86 = call i64 @vs_refresh(%struct.TYPE_40__* %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %349

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %137, %106, %89
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %92 = call i64 @v_event_get(%struct.TYPE_40__* %91, %struct.TYPE_41__* %6, i32 0, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %349

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %138 [
    i32 133, label %98
    i32 131, label %123
    i32 132, label %123
    i32 130, label %127
    i32 128, label %128
    i32 129, label %132
  ]

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @K_VLNEXT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %12, align 4
  br label %90

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @K_ESCAPE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %349

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %98
  %115 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %141

123:                                              ; preds = %95, %95
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %125 = load i32, i32* @SC_EXIT_FORCE, align 4
  %126 = call i32 @F_SET(%struct.TYPE_40__* %124, i32 %125)
  store i32 1, i32* %3, align 4
  br label %349

127:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %349

128:                                              ; preds = %95
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %130 = load i32, i32* @VIM_WRESIZE, align 4
  %131 = call i32 @v_emsg(%struct.TYPE_40__* %129, i32* null, i32 %130)
  store i32 0, i32* %3, align 4
  br label %349

132:                                              ; preds = %95
  %133 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %134 = call i32 @vs_repaint(%struct.TYPE_40__* %133, %struct.TYPE_41__* %6)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %349

137:                                              ; preds = %132
  br label %90

138:                                              ; preds = %95
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %140 = call i32 @v_event_err(%struct.TYPE_40__* %139, %struct.TYPE_41__* %6)
  store i32 0, i32* %3, align 4
  br label %349

141:                                              ; preds = %114
  br label %142

142:                                              ; preds = %141, %76
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @GET_SPACE_RETW(%struct.TYPE_40__* %143, i32* %144, i64 %145, i64 %146)
  %148 = load i32*, i32** %14, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @MEMMOVE(i32* %148, i32* %149, i64 %150)
  %152 = load i32*, i32** %14, align 8
  store i32* %152, i32** %15, align 8
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %142
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @K_CR, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155, %142
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @K_NL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %317

167:                                              ; preds = %161, %155
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 1
  store i64 %172, i64* %175, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @db_set(%struct.TYPE_40__* %179, i64 %183, i32* %184, i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %167
  br label %312

192:                                              ; preds = %167
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %196, %198
  %200 = load i32*, i32** %15, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 %199
  store i32* %201, i32** %15, align 8
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 %205, %207
  %209 = load i64, i64* %10, align 8
  %210 = sub i64 %209, %208
  store i64 %210, i64* %10, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %192
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %215 = load i32, i32* @O_AUTOINDENT, align 4
  %216 = call i64 @O_ISSET(%struct.TYPE_40__* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %230, %218
  %220 = load i64, i64* %10, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32*, i32** %15, align 8
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @isblank(i32 %224)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %222, %219
  %228 = phi i1 [ false, %219 ], [ %226, %222 ]
  br i1 %228, label %229, label %235

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %10, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %15, align 8
  br label %219

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %213, %192
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %10, align 8
  %241 = call %struct.TYPE_39__* @text_init(%struct.TYPE_40__* %237, i32* %238, i64 %239, i64 %240)
  store %struct.TYPE_39__* %241, %struct.TYPE_39__** %8, align 8
  %242 = icmp eq %struct.TYPE_39__* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %312

244:                                              ; preds = %236
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %278

247:                                              ; preds = %244
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %249 = load i32, i32* @O_AUTOINDENT, align 4
  %250 = call i64 @O_ISSET(%struct.TYPE_40__* %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %247
  %253 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %259 = call i64 @v_txt_auto(%struct.TYPE_40__* %253, i64 %257, i32* null, i32 0, %struct.TYPE_39__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %252
  br label %312

262:                                              ; preds = %252
  %263 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub i64 %270, 1
  br label %273

272:                                              ; preds = %262
  br label %273

273:                                              ; preds = %272, %267
  %274 = phi i64 [ %271, %267 ], [ 0, %272 ]
  %275 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %276, i32 0, i32 0
  store i64 %274, i64* %277, align 8
  br label %282

278:                                              ; preds = %247, %244
  %279 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 0
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %278, %273
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = sub i64 %290, 1
  br label %293

292:                                              ; preds = %282
  br label %293

293:                                              ; preds = %292, %287
  %294 = phi i64 [ %291, %287 ], [ 0, %292 ]
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  store i64 %294, i64* %297, align 8
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @db_append(%struct.TYPE_40__* %298, i32 1, i64 %302, i32 %305, i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %293
  br label %312

312:                                              ; preds = %311, %261, %243, %191
  store i32 1, i32* %13, align 4
  br label %316

313:                                              ; preds = %293
  %314 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %315 = call i32 @text_free(%struct.TYPE_39__* %314)
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %313, %312
  br label %337

317:                                              ; preds = %161
  %318 = load i32*, i32** %14, align 8
  %319 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i32, i32* %318, i64 %322
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %11, align 4
  %328 = call i32 @STRSET(i32* %323, i32 %326, i32 %327)
  %329 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %330 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i32*, i32** %14, align 8
  %335 = load i64, i64* %10, align 8
  %336 = call i32 @db_set(%struct.TYPE_40__* %329, i64 %333, i32* %334, i64 %335)
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %317, %316
  %338 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %339 = load i32*, i32** %14, align 8
  %340 = load i64, i64* %9, align 8
  %341 = call i32 @FREE_SPACEW(%struct.TYPE_40__* %338, i32* %339, i64 %340)
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 1
  %346 = bitcast %struct.TYPE_36__* %343 to i8*
  %347 = bitcast %struct.TYPE_36__* %345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %346, i8* align 8 %347, i64 16, i1 false)
  %348 = load i32, i32* %13, align 4
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %337, %138, %136, %128, %127, %123, %112, %94, %88, %71, %30, %26
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local %struct.TYPE_37__* @VIP(%struct.TYPE_40__*) #1

declare dso_local i64 @db_get(%struct.TYPE_40__*, i64, i32, i32**, i64*) #1

declare dso_local i32 @msgq(%struct.TYPE_40__*, i32, i8*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @v_eol(%struct.TYPE_40__*, %struct.TYPE_35__*) #1

declare dso_local i64 @vs_refresh(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @v_event_get(%struct.TYPE_40__*, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @v_emsg(%struct.TYPE_40__*, i32*, i32) #1

declare dso_local i32 @vs_repaint(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @v_event_err(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_40__*, i32*, i64, i64) #1

declare dso_local i32 @MEMMOVE(i32*, i32*, i64) #1

declare dso_local i32 @db_set(%struct.TYPE_40__*, i64, i32*, i64) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local %struct.TYPE_39__* @text_init(%struct.TYPE_40__*, i32*, i64, i64) #1

declare dso_local i64 @v_txt_auto(%struct.TYPE_40__*, i64, i32*, i32, %struct.TYPE_39__*) #1

declare dso_local i64 @db_append(%struct.TYPE_40__*, i32, i64, i32, i32) #1

declare dso_local i32 @text_free(%struct.TYPE_39__*) #1

declare dso_local i32 @STRSET(i32*, i32, i32) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_40__*, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
