; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_svn_repos_parse_dumpstream3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_svn_repos_parse_dumpstream3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i32*)*, i32 (i8**, i32*, i8*, i32*)*, i32 (i8**, i32*, i8*, i32*)*, i32 (i32, i8*, i32*)* }
%struct.TYPE_11__ = type { i64, i32* }

@SVN__STREAM_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_REVISION_NUMBER = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_UUID = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_MAGIC_HEADER = common dso_local global i32 0, align 4
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unrecognized record type in stream\00", align 1
@SVN_REPOS_DUMPFILE_CONTENT_LENGTH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_PROP_DELTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_REPOS_DUMPFILE_TEXT_DELTA = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Sum of subblock sizes larger than total block content length\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_parse_dumpstream3(i32* %0, %struct.TYPE_12__* %1, i8* %2, i32 %3, i32 (i8*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 (i8*)* %4, i32 (i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %18, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %45 = call i8* @apr_palloc(i32* %43, i64 %44)
  store i8* %45, i8** %19, align 8
  %46 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32* @svn_pool_create(i32* %47)
  store i32* %48, i32** %21, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32* @svn_pool_create(i32* %49)
  store i32* %50, i32** %22, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32* @svn_pool_create(i32* %51)
  store i32* %52, i32** %23, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call %struct.TYPE_12__* @complete_vtable(%struct.TYPE_12__* %53, i32* %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = call i32 @svn_stream_readline(i32* %56, %struct.TYPE_11__** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %7
  %63 = call i32* (...) @stream_ran_dry()
  store i32* %63, i32** %8, align 8
  br label %471

64:                                               ; preds = %7
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @parse_format_version(i32* %24, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 6
  %72 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %71, align 8
  %73 = icmp ne i32 (i32, i8*, i32*)* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  %77 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %76, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 %77(i32 %78, i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %83

83:                                               ; preds = %74, %64
  br label %84

84:                                               ; preds = %83, %123, %452
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %28, align 4
  %87 = load i32*, i32** %21, align 8
  %88 = call i32 @svn_pool_clear(i32* %87)
  %89 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %90 = icmp ne i32 (i8*)* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 %92(i8* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @svn_stream_readline(i32* %97, %struct.TYPE_11__** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %105 = call i64 @svn_stringbuf_isempty(%struct.TYPE_11__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %453

108:                                              ; preds = %103
  %109 = call i32* (...) @stream_ran_dry()
  store i32* %109, i32** %8, align 8
  br label %471

110:                                              ; preds = %96
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @svn_ctype_isspace(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115, %110
  br label %84

124:                                              ; preds = %115
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = call i32 @read_header_block(i32* %125, %struct.TYPE_11__* %126, i32** %25, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** %25, align 8
  %131 = load i32, i32* @SVN_REPOS_DUMPFILE_REVISION_NUMBER, align 4
  %132 = call i8* @svn_hash_gets(i32* %130, i32 %131)
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %124
  %135 = load i8*, i8** %18, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32 (i8*)*, i32 (i8*)** %139, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = call i32 %140(i8* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @svn_pool_clear(i32* %144)
  br label %146

146:                                              ; preds = %137, %134
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 5
  %149 = load i32 (i8**, i32*, i8*, i32*)*, i32 (i8**, i32*, i8*, i32*)** %148, align 8
  %150 = load i32*, i32** %25, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = call i32 %149(i8** %18, i32* %150, i8* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %200

155:                                              ; preds = %124
  %156 = load i32*, i32** %25, align 8
  %157 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_PATH, align 4
  %158 = call i8* @svn_hash_gets(i32* %156, i32 %157)
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i32 (i8**, i32*, i8*, i32*)*, i32 (i8**, i32*, i8*, i32*)** %162, align 8
  %164 = load i32*, i32** %25, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = load i32*, i32** %23, align 8
  %167 = call i32 %163(i8** %26, i32* %164, i8* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %27, align 4
  br label %199

170:                                              ; preds = %155
  %171 = load i32*, i32** %25, align 8
  %172 = load i32, i32* @SVN_REPOS_DUMPFILE_UUID, align 4
  %173 = call i8* @svn_hash_gets(i32* %171, i32 %172)
  store i8* %173, i8** %32, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %177, align 8
  %179 = load i8*, i8** %32, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = load i32*, i32** %15, align 8
  %182 = call i32 %178(i8* %179, i8* %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %198

184:                                              ; preds = %170
  %185 = load i32*, i32** %25, align 8
  %186 = load i32, i32* @SVN_REPOS_DUMPFILE_MAGIC_HEADER, align 4
  %187 = call i8* @svn_hash_gets(i32* %185, i32 %186)
  store i8* %187, i8** %32, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i8*, i8** %32, align 8
  %191 = call i32 @svn_cstring_atoi(i32* %24, i8* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %197

193:                                              ; preds = %184
  %194 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %195 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %196 = call i32* @svn_error_create(i32 %194, i32* null, i32 %195)
  store i32* %196, i32** %8, align 8
  br label %471

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %175
  br label %199

199:                                              ; preds = %198, %160
  br label %200

200:                                              ; preds = %199, %146
  %201 = load i32*, i32** %25, align 8
  %202 = load i32, i32* @SVN_REPOS_DUMPFILE_CONTENT_LENGTH, align 4
  %203 = call i8* @svn_hash_gets(i32* %201, i32 %202)
  store i8* %203, i8** %29, align 8
  %204 = load i32*, i32** %25, align 8
  %205 = load i32, i32* @SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH, align 4
  %206 = call i8* @svn_hash_gets(i32* %204, i32 %205)
  store i8* %206, i8** %30, align 8
  %207 = load i32*, i32** %25, align 8
  %208 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH, align 4
  %209 = call i8* @svn_hash_gets(i32* %207, i32 %208)
  store i8* %209, i8** %31, align 8
  %210 = load i32, i32* %24, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %222

212:                                              ; preds = %200
  %213 = load i8*, i8** %29, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load i8*, i8** %30, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i8*, i8** %31, align 8
  %220 = icmp ne i8* %219, null
  %221 = xor i1 %220, true
  br label %222

222:                                              ; preds = %218, %215, %212, %200
  %223 = phi i1 [ false, %215 ], [ false, %212 ], [ false, %200 ], [ %221, %218 ]
  %224 = zext i1 %223 to i32
  store i32 %224, i32* %28, align 4
  %225 = load i8*, i8** %30, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %28, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %287

230:                                              ; preds = %227, %222
  %231 = load i32*, i32** %25, align 8
  %232 = load i32, i32* @SVN_REPOS_DUMPFILE_PROP_DELTA, align 4
  %233 = call i8* @svn_hash_gets(i32* %231, i32 %232)
  store i8* %233, i8** %34, align 8
  %234 = load i8*, i8** %34, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load i8*, i8** %34, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br label %240

240:                                              ; preds = %236, %230
  %241 = phi i1 [ false, %230 ], [ %239, %236 ]
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %35, align 4
  %243 = load i32, i32* %27, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %240
  %246 = load i32, i32* %35, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %245
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load i32 (i8*)*, i32 (i8*)** %250, align 8
  %252 = load i8*, i8** %26, align 8
  %253 = call i32 %251(i8* %252)
  %254 = call i32 @SVN_ERR(i32 %253)
  br label %255

255:                                              ; preds = %248, %245, %240
  %256 = load i32*, i32** %9, align 8
  %257 = load i8*, i8** %30, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i8*, i8** %30, align 8
  br label %263

261:                                              ; preds = %255
  %262 = load i8*, i8** %29, align 8
  br label %263

263:                                              ; preds = %261, %259
  %264 = phi i8* [ %260, %259 ], [ %262, %261 ]
  %265 = call i64 @svn__atoui64(i8* %264)
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %267 = load i32, i32* %27, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = load i8*, i8** %26, align 8
  br label %273

271:                                              ; preds = %263
  %272 = load i8*, i8** %18, align 8
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i8* [ %270, %269 ], [ %272, %271 ]
  %275 = load i8*, i8** %11, align 8
  %276 = load i32, i32* %27, align 4
  %277 = load i32, i32* %27, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = load i32*, i32** %23, align 8
  br label %283

281:                                              ; preds = %273
  %282 = load i32*, i32** %22, align 8
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32* [ %280, %279 ], [ %282, %281 ]
  %285 = call i32 @parse_property_block(i32* %256, i64 %265, %struct.TYPE_12__* %266, i8* %274, i8* %275, i32 %276, i64* %33, i32* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  br label %287

287:                                              ; preds = %283, %227
  %288 = load i8*, i8** %31, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %333

290:                                              ; preds = %287
  %291 = load i32*, i32** %25, align 8
  %292 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA, align 4
  %293 = call i8* @svn_hash_gets(i32* %291, i32 %292)
  store i8* %293, i8** %36, align 8
  %294 = load i32, i32* @FALSE, align 4
  store i32 %294, i32* %37, align 4
  %295 = load i32, i32* %12, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %290
  %298 = load i8*, i8** %36, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load i8*, i8** %36, align 8
  %302 = call i64 @strcmp(i8* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %303 = icmp eq i64 %302, 0
  br label %304

304:                                              ; preds = %300, %297
  %305 = phi i1 [ false, %297 ], [ %303, %300 ]
  %306 = zext i1 %305 to i32
  store i32 %306, i32* %37, align 4
  br label %307

307:                                              ; preds = %304, %290
  %308 = load i32*, i32** %9, align 8
  %309 = load i8*, i8** %31, align 8
  %310 = call i64 @svn__atoui64(i8* %309)
  %311 = load i32, i32* %37, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %313 = load i32, i32* %27, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = load i8*, i8** %26, align 8
  br label %319

317:                                              ; preds = %307
  %318 = load i8*, i8** %18, align 8
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i8* [ %316, %315 ], [ %318, %317 ]
  %321 = load i8*, i8** %19, align 8
  %322 = load i64, i64* %20, align 8
  %323 = load i32, i32* %27, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %319
  %326 = load i32*, i32** %23, align 8
  br label %329

327:                                              ; preds = %319
  %328 = load i32*, i32** %22, align 8
  br label %329

329:                                              ; preds = %327, %325
  %330 = phi i32* [ %326, %325 ], [ %328, %327 ]
  %331 = call i32 @parse_text_block(i32* %308, i64 %310, i32 %311, %struct.TYPE_12__* %312, i8* %320, i8* %321, i64 %322, i32* %330)
  %332 = call i32 @SVN_ERR(i32 %331)
  br label %379

333:                                              ; preds = %287
  %334 = load i32, i32* %28, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %378

336:                                              ; preds = %333
  %337 = load i8*, i8** %29, align 8
  %338 = call i64 @svn__atoui64(i8* %337)
  %339 = load i64, i64* %33, align 8
  %340 = sub nsw i64 %338, %339
  store i64 %340, i64* %39, align 8
  %341 = load i64, i64* %39, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %352, label %343

343:                                              ; preds = %336
  %344 = load i32*, i32** %25, align 8
  %345 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %346 = call i8* @svn_hash_gets(i32* %344, i32 %345)
  store i8* %346, i8** %38, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %377

348:                                              ; preds = %343
  %349 = load i8*, i8** %38, align 8
  %350 = call i64 @strcmp(i8* %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %377

352:                                              ; preds = %348, %336
  %353 = load i32*, i32** %9, align 8
  %354 = load i64, i64* %39, align 8
  %355 = load i32, i32* @FALSE, align 4
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %357 = load i32, i32* %27, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = load i8*, i8** %26, align 8
  br label %363

361:                                              ; preds = %352
  %362 = load i8*, i8** %18, align 8
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i8* [ %360, %359 ], [ %362, %361 ]
  %365 = load i8*, i8** %19, align 8
  %366 = load i64, i64* %20, align 8
  %367 = load i32, i32* %27, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %363
  %370 = load i32*, i32** %23, align 8
  br label %373

371:                                              ; preds = %363
  %372 = load i32*, i32** %22, align 8
  br label %373

373:                                              ; preds = %371, %369
  %374 = phi i32* [ %370, %369 ], [ %372, %371 ]
  %375 = call i32 @parse_text_block(i32* %353, i64 %354, i32 %355, %struct.TYPE_12__* %356, i8* %364, i8* %365, i64 %366, i32* %374)
  %376 = call i32 @SVN_ERR(i32 %375)
  br label %377

377:                                              ; preds = %373, %348, %343
  br label %378

378:                                              ; preds = %377, %333
  br label %379

379:                                              ; preds = %378, %329
  %380 = load i8*, i8** %29, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %382, label %440

382:                                              ; preds = %379
  %383 = load i32, i32* %28, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %440, label %385

385:                                              ; preds = %382
  %386 = load i8*, i8** %29, align 8
  %387 = call i64 @svn__atoui64(i8* %386)
  %388 = load i8*, i8** %30, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load i8*, i8** %30, align 8
  %392 = call i64 @svn__atoui64(i8* %391)
  br label %394

393:                                              ; preds = %385
  br label %394

394:                                              ; preds = %393, %390
  %395 = phi i64 [ %392, %390 ], [ 0, %393 ]
  %396 = sub nsw i64 %387, %395
  %397 = load i8*, i8** %31, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %394
  %400 = load i8*, i8** %31, align 8
  %401 = call i64 @svn__atoui64(i8* %400)
  br label %403

402:                                              ; preds = %394
  br label %403

403:                                              ; preds = %402, %399
  %404 = phi i64 [ %401, %399 ], [ 0, %402 ]
  %405 = sub nsw i64 %396, %404
  store i64 %405, i64* %42, align 8
  %406 = load i64, i64* %42, align 8
  %407 = icmp slt i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %403
  %409 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %410 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %411 = call i32* @svn_error_create(i32 %409, i32* null, i32 %410)
  store i32* %411, i32** %8, align 8
  br label %471

412:                                              ; preds = %403
  br label %413

413:                                              ; preds = %438, %412
  %414 = load i64, i64* %42, align 8
  %415 = icmp sgt i64 %414, 0
  br i1 %415, label %416, label %439

416:                                              ; preds = %413
  %417 = load i64, i64* %42, align 8
  %418 = load i64, i64* %20, align 8
  %419 = icmp sge i64 %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %416
  %421 = load i64, i64* %20, align 8
  store i64 %421, i64* %40, align 8
  br label %424

422:                                              ; preds = %416
  %423 = load i64, i64* %42, align 8
  store i64 %423, i64* %40, align 8
  br label %424

424:                                              ; preds = %422, %420
  %425 = load i64, i64* %40, align 8
  store i64 %425, i64* %41, align 8
  %426 = load i32*, i32** %9, align 8
  %427 = load i8*, i8** %19, align 8
  %428 = call i32 @svn_stream_read_full(i32* %426, i8* %427, i64* %40)
  %429 = call i32 @SVN_ERR(i32 %428)
  %430 = load i64, i64* %40, align 8
  %431 = load i64, i64* %42, align 8
  %432 = sub nsw i64 %431, %430
  store i64 %432, i64* %42, align 8
  %433 = load i64, i64* %40, align 8
  %434 = load i64, i64* %41, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %424
  %437 = call i32* (...) @stream_ran_dry()
  store i32* %437, i32** %8, align 8
  br label %471

438:                                              ; preds = %424
  br label %413

439:                                              ; preds = %413
  br label %440

440:                                              ; preds = %439, %382, %379
  %441 = load i32, i32* %27, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %440
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 1
  %446 = load i32 (i8*)*, i32 (i8*)** %445, align 8
  %447 = load i8*, i8** %26, align 8
  %448 = call i32 %446(i8* %447)
  %449 = call i32 @SVN_ERR(i32 %448)
  %450 = load i32*, i32** %23, align 8
  %451 = call i32 @svn_pool_clear(i32* %450)
  br label %452

452:                                              ; preds = %443, %440
  br label %84

453:                                              ; preds = %107
  %454 = load i8*, i8** %18, align 8
  %455 = icmp ne i8* %454, null
  br i1 %455, label %456, label %463

456:                                              ; preds = %453
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 0
  %459 = load i32 (i8*)*, i32 (i8*)** %458, align 8
  %460 = load i8*, i8** %18, align 8
  %461 = call i32 %459(i8* %460)
  %462 = call i32 @SVN_ERR(i32 %461)
  br label %463

463:                                              ; preds = %456, %453
  %464 = load i32*, i32** %21, align 8
  %465 = call i32 @svn_pool_destroy(i32* %464)
  %466 = load i32*, i32** %22, align 8
  %467 = call i32 @svn_pool_destroy(i32* %466)
  %468 = load i32*, i32** %23, align 8
  %469 = call i32 @svn_pool_destroy(i32* %468)
  %470 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %470, i32** %8, align 8
  br label %471

471:                                              ; preds = %463, %436, %408, %193, %108, %62
  %472 = load i32*, i32** %8, align 8
  ret i32* %472
}

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_12__* @complete_vtable(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_11__**, i8*, i32*, i32*) #1

declare dso_local i32* @stream_ran_dry(...) #1

declare dso_local i32 @parse_format_version(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @svn_stringbuf_isempty(%struct.TYPE_11__*) #1

declare dso_local i64 @svn_ctype_isspace(i32) #1

declare dso_local i32 @read_header_block(i32*, %struct.TYPE_11__*, i32**, i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_cstring_atoi(i32*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_property_block(i32*, i64, %struct.TYPE_12__*, i8*, i8*, i32, i64*, i32*) #1

declare dso_local i64 @svn__atoui64(i8*) #1

declare dso_local i32 @parse_text_block(i32*, i64, i32, %struct.TYPE_12__*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i64*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
