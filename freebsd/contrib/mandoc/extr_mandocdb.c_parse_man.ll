; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_man.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32, i32* }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i64, %struct.roff_node*, %struct.roff_node*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.roff_node* }

@ROFFT_BODY = common dso_local global i64 0, align 8
@MAN_SH = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@NAME_TITLE = common dso_local global i32 0, align 4
@NAME_HEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\-\\-\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\-\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\(en\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\\(em\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_man to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_man(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca %struct.mpage*, align 8
  %5 = alloca %struct.roff_meta*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca %struct.roff_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.mpage* %0, %struct.mpage** %4, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %5, align 8
  store %struct.roff_node* %2, %struct.roff_node** %6, align 8
  %13 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %14 = icmp eq %struct.roff_node* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %274

16:                                               ; preds = %3
  %17 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %18 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ROFFT_BODY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %253

22:                                               ; preds = %16
  %23 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAN_SH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %253

28:                                               ; preds = %22
  %29 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  store %struct.roff_node* %29, %struct.roff_node** %8, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.roff_node*, %struct.roff_node** %33, align 8
  store %struct.roff_node* %34, %struct.roff_node** %7, align 8
  %35 = icmp ne %struct.roff_node* %34, null
  br i1 %35, label %36, label %252

36:                                               ; preds = %28
  %37 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %38 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %37, i32 0, i32 3
  %39 = load %struct.roff_node*, %struct.roff_node** %38, align 8
  store %struct.roff_node* %39, %struct.roff_node** %7, align 8
  %40 = icmp ne %struct.roff_node* %39, null
  br i1 %40, label %41, label %252

41:                                               ; preds = %36
  %42 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 2
  %44 = load %struct.roff_node*, %struct.roff_node** %43, align 8
  %45 = icmp eq %struct.roff_node* %44, null
  br i1 %45, label %46, label %252

46:                                               ; preds = %41
  %47 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ROFFT_TEXT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %252

52:                                               ; preds = %46
  %53 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %54 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strcmp(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %252

58:                                               ; preds = %52
  %59 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %60 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %59, i32 0, i32 3
  %61 = load %struct.roff_node*, %struct.roff_node** %60, align 8
  %62 = icmp ne %struct.roff_node* %61, null
  br i1 %62, label %63, label %252

63:                                               ; preds = %58
  store i8* null, i8** %10, align 8
  %64 = load %struct.roff_node*, %struct.roff_node** %8, align 8
  %65 = call i32 @deroff(i8** %10, %struct.roff_node* %64)
  %66 = load i8*, i8** %10, align 8
  %67 = icmp eq i8* null, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %274

69:                                               ; preds = %63
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %157, %69
  %72 = load i8*, i8** %9, align 8
  %73 = call i64 @strcspn(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %73, i64* %12, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %158

81:                                               ; preds = %71
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %11, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 45, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %81
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 92, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 45, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %81
  br label %158

107:                                              ; preds = %100, %94
  %108 = load %struct.mpage*, %struct.mpage** %4, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* @NAME_TITLE, align 4
  %111 = call i32 @putkey(%struct.mpage* %108, i8* %109, i32 %110)
  %112 = load %struct.mpage*, %struct.mpage** %4, align 8
  %113 = getelementptr inbounds %struct.mpage, %struct.mpage* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %107
  %117 = load i8*, i8** %9, align 8
  %118 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %119 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @strcasecmp(i8* %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.mpage*, %struct.mpage** %4, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* @NAME_HEAD, align 4
  %127 = call i32 @putkey(%struct.mpage* %124, i8* %125, i32 %126)
  %128 = load %struct.mpage*, %struct.mpage** %4, align 8
  %129 = getelementptr inbounds %struct.mpage, %struct.mpage* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %123, %116, %107
  %131 = load i8, i8* %11, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 32, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %9, align 8
  br label %158

139:                                              ; preds = %130
  %140 = load i8, i8* %11, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 44, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, 1
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 %146
  store i8* %148, i8** %9, align 8
  br label %149

149:                                              ; preds = %154, %139
  %150 = load i8*, i8** %9, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 32, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %9, align 8
  br label %149

157:                                              ; preds = %149
  br label %71

158:                                              ; preds = %134, %106, %80
  %159 = load i8*, i8** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp eq i8* %159, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %158
  %163 = load %struct.mpage*, %struct.mpage** %4, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @NAME_TITLE, align 4
  %166 = call i32 @putkey(%struct.mpage* %163, i8* %164, i32 %165)
  %167 = load %struct.mpage*, %struct.mpage** %4, align 8
  %168 = getelementptr inbounds %struct.mpage, %struct.mpage* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %162
  %172 = load i8*, i8** %9, align 8
  %173 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %174 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @strcasecmp(i8* %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %171
  %179 = load %struct.mpage*, %struct.mpage** %4, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* @NAME_HEAD, align 4
  %182 = call i32 @putkey(%struct.mpage* %179, i8* %180, i32 %181)
  %183 = load %struct.mpage*, %struct.mpage** %4, align 8
  %184 = getelementptr inbounds %struct.mpage, %struct.mpage* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %178, %171, %162
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 @free(i8* %186)
  br label %274

188:                                              ; preds = %158
  br label %189

189:                                              ; preds = %194, %188
  %190 = load i8*, i8** %9, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i64 @isspace(i8 zeroext %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 8
  br label %189

197:                                              ; preds = %189
  %198 = load i8*, i8** %9, align 8
  %199 = call i64 @strncmp(i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %200 = icmp eq i64 0, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  store i8* %203, i8** %9, align 8
  br label %236

204:                                              ; preds = %197
  %205 = load i8*, i8** %9, align 8
  %206 = call i64 @strncmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %207 = icmp eq i64 0, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i8*, i8** %9, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 4
  store i8* %210, i8** %9, align 8
  br label %235

211:                                              ; preds = %204
  %212 = load i8*, i8** %9, align 8
  %213 = call i64 @strncmp(i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %214 = icmp eq i64 0, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8* %217, i8** %9, align 8
  br label %234

218:                                              ; preds = %211
  %219 = load i8*, i8** %9, align 8
  %220 = call i64 @strncmp(i8* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %221 = icmp eq i64 0, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  store i8* %224, i8** %9, align 8
  br label %233

225:                                              ; preds = %218
  %226 = load i8*, i8** %9, align 8
  %227 = call i64 @strncmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %228 = icmp eq i64 0, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4
  store i8* %231, i8** %9, align 8
  br label %232

232:                                              ; preds = %229, %225
  br label %233

233:                                              ; preds = %232, %222
  br label %234

234:                                              ; preds = %233, %215
  br label %235

235:                                              ; preds = %234, %208
  br label %236

236:                                              ; preds = %235, %201
  br label %237

237:                                              ; preds = %242, %236
  %238 = load i8*, i8** %9, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 32, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %9, align 8
  br label %237

245:                                              ; preds = %237
  %246 = load i8*, i8** %9, align 8
  %247 = call i32* @mandoc_strndup(i8* %246, i32 150)
  %248 = load %struct.mpage*, %struct.mpage** %4, align 8
  %249 = getelementptr inbounds %struct.mpage, %struct.mpage* %248, i32 0, i32 1
  store i32* %247, i32** %249, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 @free(i8* %250)
  br label %274

252:                                              ; preds = %58, %52, %46, %41, %36, %28
  br label %253

253:                                              ; preds = %252, %22, %16
  %254 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %255 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %254, i32 0, i32 3
  %256 = load %struct.roff_node*, %struct.roff_node** %255, align 8
  store %struct.roff_node* %256, %struct.roff_node** %6, align 8
  br label %257

257:                                              ; preds = %270, %253
  %258 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %259 = icmp ne %struct.roff_node* %258, null
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = load %struct.mpage*, %struct.mpage** %4, align 8
  %262 = getelementptr inbounds %struct.mpage, %struct.mpage* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = icmp ne i32* null, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  br label %274

266:                                              ; preds = %260
  %267 = load %struct.mpage*, %struct.mpage** %4, align 8
  %268 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %269 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  call void @parse_man(%struct.mpage* %267, %struct.roff_meta* %268, %struct.roff_node* %269)
  br label %270

270:                                              ; preds = %266
  %271 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %272 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %271, i32 0, i32 2
  %273 = load %struct.roff_node*, %struct.roff_node** %272, align 8
  store %struct.roff_node* %273, %struct.roff_node** %6, align 8
  br label %257

274:                                              ; preds = %15, %68, %185, %245, %265, %257
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @deroff(i8**, %struct.roff_node*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @putkey(%struct.mpage*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @mandoc_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
