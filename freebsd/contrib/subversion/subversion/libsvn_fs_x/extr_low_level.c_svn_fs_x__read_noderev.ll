; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__read_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__read_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, i32, i8*, i32, %struct.TYPE_7__, i8*, i32, i32, i32, i64, i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HEADER_ID = common dso_local global i32 0, align 4
@HEADER_NODE = common dso_local global i32 0, align 4
@HEADER_COPY = common dso_local global i32 0, align 4
@HEADER_TYPE = common dso_local global i32 0, align 4
@SVN_FS_X__KIND_FILE = common dso_local global i32 0, align 4
@SVN_FS_X__KIND_DIR = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Missing kind field in node-rev '%s'\00", align 1
@svn_node_file = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@HEADER_COUNT = common dso_local global i32 0, align 4
@HEADER_PROPS = common dso_local global i32 0, align 4
@HEADER_TEXT = common dso_local global i32 0, align 4
@HEADER_CPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Missing cpath field in node-rev '%s'\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Non-canonical cpath field in node-rev '%s'\00", align 1
@HEADER_PRED = common dso_local global i32 0, align 4
@HEADER_COPYROOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Malformed copyroot line in node-rev '%s'\00", align 1
@HEADER_COPYFROM = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Malformed copyfrom line in node-rev '%s'\00", align 1
@HEADER_MINFO_CNT = common dso_local global i32 0, align 4
@HEADER_MINFO_HERE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_noderev(%struct.TYPE_6__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @read_header_block(i32** %10, i32* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_stream_close(i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.TYPE_6__* @apr_pcalloc(i32* %21, i32 96)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @HEADER_ID, align 4
  %25 = call i8* @svn_hash_gets(i32* %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @HEADER_ID, align 4
  %30 = call i32 @read_id_part(%struct.TYPE_7__* %27, i32* %28, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 14
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @HEADER_NODE, align 4
  %36 = call i32 @read_id_part(%struct.TYPE_7__* %33, i32* %34, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 13
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @HEADER_COPY, align 4
  %42 = call i32 @read_id_part(%struct.TYPE_7__* %39, i32* %40, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @HEADER_TYPE, align 4
  %46 = call i8* @svn_hash_gets(i32* %44, i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %4
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* @SVN_FS_X__KIND_FILE, align 4
  %52 = call i64 @strcmp(i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* @SVN_FS_X__KIND_DIR, align 4
  %57 = call i64 @strcmp(i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %4
  %60 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %13, align 8
  %63 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62)
  store i32* %63, i32** %5, align 8
  br label %269

64:                                               ; preds = %54, %49
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @SVN_FS_X__KIND_FILE, align 4
  %67 = call i64 @strcmp(i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @svn_node_file, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @svn_node_dir, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @HEADER_COUNT, align 4
  %79 = call i8* @svn_hash_gets(i32* %77, i32 %78)
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 11
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @svn_cstring_atoi(i64* %84, i8* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %91

88:                                               ; preds = %73
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 11
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @HEADER_PROPS, align 4
  %94 = call i8* @svn_hash_gets(i32* %92, i32 %93)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  %100 = load i8*, i8** %12, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @read_rep_offsets(i32* %99, i8* %100, %struct.TYPE_7__* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %97, %91
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* @HEADER_TEXT, align 4
  %110 = call i8* @svn_hash_gets(i32* %108, i32 %109)
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 9
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @read_rep_offsets(i32* %115, i8* %116, %struct.TYPE_7__* %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  br label %123

123:                                              ; preds = %113, %107
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* @HEADER_CPATH, align 4
  %126 = call i8* @svn_hash_gets(i32* %124, i32 %125)
  store i8* %126, i8** %12, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %131 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i8*, i8** %13, align 8
  %133 = call i32* @svn_error_createf(i32 %130, i32* null, i32 %131, i8* %132)
  store i32* %133, i32** %5, align 8
  br label %269

134:                                              ; preds = %123
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @svn_fspath__is_canonical(i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %140 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i8*, i8** %13, align 8
  %142 = call i32* @svn_error_createf(i32 %139, i32* null, i32 %140, i8* %141)
  store i32* %142, i32** %5, align 8
  br label %269

143:                                              ; preds = %134
  %144 = load i32*, i32** %8, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @apr_pstrdup(i32* %144, i8* %145)
  %147 = load i32*, i32** %8, align 8
  %148 = call i8* @auto_unescape_path(i32 %146, i32* %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* @HEADER_PRED, align 4
  %154 = call i8* @svn_hash_gets(i32* %152, i32 %153)
  store i8* %154, i8** %12, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @svn_fs_x__id_parse(i32* %159, i8* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  br label %167

163:                                              ; preds = %151
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 8
  %166 = call i32 @svn_fs_x__id_reset(i32* %165)
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* @HEADER_COPYROOT, align 4
  %170 = call i8* @svn_hash_gets(i32* %168, i32 %169)
  store i8* %170, i8** %12, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %186

173:                                              ; preds = %167
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 7
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @svn_fs_x__get_revnum(i32 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  br label %207

186:                                              ; preds = %167
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 5
  %189 = call i32 @parse_revnum(i32* %188, i8** %12)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @svn_fspath__is_canonical(i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %196 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i8*, i8** %13, align 8
  %198 = call i32* @svn_error_createf(i32 %195, i32* null, i32 %196, i8* %197)
  store i32* %198, i32** %5, align 8
  br label %269

199:                                              ; preds = %186
  %200 = load i32*, i32** %8, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @apr_pstrdup(i32* %200, i8* %201)
  %203 = load i32*, i32** %8, align 8
  %204 = call i8* @auto_unescape_path(i32 %202, i32* %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %199, %173
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* @HEADER_COPYFROM, align 4
  %210 = call i8* @svn_hash_gets(i32* %208, i32 %209)
  store i8* %210, i8** %12, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  store i32* null, i32** %215, align 8
  %216 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  br label %242

219:                                              ; preds = %207
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  %222 = call i32 @parse_revnum(i32* %221, i8** %12)
  %223 = call i32 @SVN_ERR(i32 %222)
  %224 = load i8*, i8** %12, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  %229 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %230 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %231 = load i8*, i8** %13, align 8
  %232 = call i32* @svn_error_createf(i32 %229, i32* null, i32 %230, i8* %231)
  store i32* %232, i32** %5, align 8
  br label %269

233:                                              ; preds = %219
  %234 = load i32*, i32** %8, align 8
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @apr_pstrdup(i32* %234, i8* %235)
  %237 = load i32*, i32** %8, align 8
  %238 = call i8* @auto_unescape_path(i32 %236, i32* %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  store i32* %239, i32** %241, align 8
  br label %242

242:                                              ; preds = %233, %213
  %243 = load i32*, i32** %10, align 8
  %244 = load i32, i32* @HEADER_MINFO_CNT, align 4
  %245 = call i8* @svn_hash_gets(i32* %243, i32 %244)
  store i8* %245, i8** %12, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @svn_cstring_atoi64(i64* %250, i8* %251)
  %253 = call i32 @SVN_ERR(i32 %252)
  br label %257

254:                                              ; preds = %242
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %254, %248
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* @HEADER_MINFO_HERE, align 4
  %260 = call i8* @svn_hash_gets(i32* %258, i32 %259)
  store i8* %260, i8** %12, align 8
  %261 = load i8*, i8** %12, align 8
  %262 = icmp ne i8* %261, null
  %263 = zext i1 %262 to i32
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %266, %struct.TYPE_6__** %267, align 8
  %268 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %268, i32** %5, align 8
  br label %269

269:                                              ; preds = %257, %228, %194, %138, %129, %59
  %270 = load i32*, i32** %5, align 8
  ret i32* %270
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_header_block(i32**, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @read_id_part(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cstring_atoi(i64*, i8*) #1

declare dso_local i32 @read_rep_offsets(i32*, i8*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @svn_fspath__is_canonical(i8*) #1

declare dso_local i8* @auto_unescape_path(i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_x__id_parse(i32*, i8*) #1

declare dso_local i32 @svn_fs_x__id_reset(i32*) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @parse_revnum(i32*, i8**) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
