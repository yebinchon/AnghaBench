; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"-aout\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-elf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-32\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-soft\00", align 1
@_PATH_ELFSOFT_HINTS = common dso_local global i32 0, align 4
@hints_file = common dso_local global i32 0, align 4
@_PATH_LD32_HINTS = common dso_local global i32 0, align 4
@_PATH_ELF32_HINTS = common dso_local global i32 0, align 4
@_PATH_LD_HINTS = common dso_local global i32 0, align 4
@_PATH_ELF_HINTS = common dso_local global i32 0, align 4
@rescan = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Rf:imrsv\00", align 1
@optarg = common dso_local global i32 0, align 4
@insecure = common dso_local global i32 0, align 4
@merge = common dso_local global i32 0, align 4
@justread = common dso_local global i32 0, align 4
@nostd = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dir_list = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/usr/lib\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"WARNING! '%s' can not be used\00", align 1
@n_search_dirs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@search_dirs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  br label %65

28:                                               ; preds = %17
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %5, align 8
  br label %64

39:                                               ; preds = %28
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %5, align 8
  br label %63

50:                                               ; preds = %39
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %5, align 8
  br label %62

61:                                               ; preds = %50
  br label %66

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %23
  br label %14

66:                                               ; preds = %61, %14
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @_PATH_ELFSOFT_HINTS, align 4
  store i32 %70, i32* @hints_file, align 4
  br label %93

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @_PATH_LD32_HINTS, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @_PATH_ELF32_HINTS, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* @hints_file, align 4
  br label %92

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @_PATH_LD_HINTS, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @_PATH_ELF_HINTS, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* @hints_file, align 4
  br label %92

92:                                               ; preds = %90, %81
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* @rescan, align 4
  br label %117

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = call i32 @getopt(i32 %99, i8** %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %101, i32* %7, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %113 [
    i32 82, label %105
    i32 102, label %106
    i32 105, label %108
    i32 109, label %109
    i32 114, label %110
    i32 115, label %111
    i32 118, label %112
  ]

105:                                              ; preds = %103
  store i32 1, i32* @rescan, align 4
  br label %115

106:                                              ; preds = %103
  %107 = load i32, i32* @optarg, align 4
  store i32 %107, i32* @hints_file, align 4
  br label %115

108:                                              ; preds = %103
  store i32 1, i32* @insecure, align 4
  br label %115

109:                                              ; preds = %103
  store i32 1, i32* @merge, align 4
  br label %115

110:                                              ; preds = %103
  store i32 1, i32* @justread, align 4
  br label %115

111:                                              ; preds = %103
  store i32 1, i32* @nostd, align 4
  br label %115

112:                                              ; preds = %103
  store i32 1, i32* @verbose, align 4
  br label %115

113:                                              ; preds = %103
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %112, %111, %110, %109, %108, %106, %105
  br label %98

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %96
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @justread, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @hints_file, align 4
  %125 = call i32 @list_elf_hints(i32 %124)
  br label %144

126:                                              ; preds = %120
  %127 = load i32, i32* @hints_file, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @optind, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* @optind, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i32, i32* @merge, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* @rescan, align 4
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %137, %126
  %141 = phi i1 [ true, %126 ], [ %139, %137 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @update_elf_hints(i32 %127, i32 %130, i8** %134, i32 %142)
  br label %144

144:                                              ; preds = %140, %123
  store i32 0, i32* %3, align 4
  br label %291

145:                                              ; preds = %117
  %146 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store i8* %146, i8** @dir_list, align 8
  %147 = load i32, i32* @justread, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @merge, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @rescan, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152, %149, %145
  %156 = call i32 (...) @readhints()
  store i32 %156, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %291

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %152
  %162 = load i32, i32* @nostd, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* @merge, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* @rescan, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = call i32 (...) @std_search_path()
  br label %172

172:                                              ; preds = %170, %167, %164, %161
  %173 = load i32, i32* @justread, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %239, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @optind, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %235, %175
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %238

181:                                              ; preds = %177
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @stat(i8* %186, %struct.stat* %12)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %194)
  store i32 -1, i32* %8, align 4
  br label %234

196:                                              ; preds = %181
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %196
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %209)
  store i32 -1, i32* %8, align 4
  br label %233

211:                                              ; preds = %196
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @S_ISREG(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @dofile(i8* %221, i32 0)
  %223 = load i32, i32* %8, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %8, align 4
  br label %232

225:                                              ; preds = %211
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @add_search_path(i8* %230)
  br label %232

232:                                              ; preds = %225, %216
  br label %233

233:                                              ; preds = %232, %204
  br label %234

234:                                              ; preds = %233, %189
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %177

238:                                              ; preds = %177
  br label %239

239:                                              ; preds = %238, %172
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %261, %239
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @n_search_dirs, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %264

244:                                              ; preds = %240
  %245 = load i8*, i8** @dir_list, align 8
  %246 = load i8*, i8** @dir_list, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %252 = load i32*, i32** @search_dirs, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @concat(i8* %245, i8* %251, i32 %256)
  store i8* %257, i8** %13, align 8
  %258 = load i8*, i8** @dir_list, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i8*, i8** %13, align 8
  store i8* %260, i8** @dir_list, align 8
  br label %261

261:                                              ; preds = %244
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %240

264:                                              ; preds = %240
  %265 = load i32, i32* @justread, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (...) @listhints()
  store i32 0, i32* %3, align 4
  br label %291

269:                                              ; preds = %264
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %283, %269
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @n_search_dirs, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = load i32*, i32** @search_dirs, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @dodir(i32 %279, i32 1)
  %281 = load i32, i32* %8, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %270

286:                                              ; preds = %270
  %287 = call i32 (...) @buildhints()
  %288 = load i32, i32* %8, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %286, %267, %158, %144
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @list_elf_hints(i32) #1

declare dso_local i32 @update_elf_hints(i32, i32, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @readhints(...) #1

declare dso_local i32 @std_search_path(...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @dofile(i8*, i32) #1

declare dso_local i32 @add_search_path(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @listhints(...) #1

declare dso_local i32 @dodir(i32, i32) #1

declare dso_local i32 @buildhints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
