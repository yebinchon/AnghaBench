; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__read_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__read_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i32, i32*, i32, i8*, i32, i32, i32, i32, i32, i64, i32 }

@HEADER_ID = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missing id field in node-rev\00", align 1
@HEADER_TYPE = common dso_local global i32 0, align 4
@SVN_FS_FS__KIND_FILE = common dso_local global i32 0, align 4
@SVN_FS_FS__KIND_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Missing kind field in node-rev '%s'\00", align 1
@svn_node_file = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@HEADER_COUNT = common dso_local global i32 0, align 4
@HEADER_PROPS = common dso_local global i32 0, align 4
@HEADER_TEXT = common dso_local global i32 0, align 4
@HEADER_CPATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Missing cpath field in node-rev '%s'\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Non-canonical cpath field in node-rev '%s'\00", align 1
@HEADER_PRED = common dso_local global i32 0, align 4
@HEADER_COPYROOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Malformed copyroot line in node-rev '%s'\00", align 1
@HEADER_COPYFROM = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Malformed copyfrom line in node-rev '%s'\00", align 1
@HEADER_FRESHTXNRT = common dso_local global i32 0, align 4
@HEADER_MINFO_CNT = common dso_local global i32 0, align 4
@HEADER_MINFO_HERE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__read_noderev(%struct.TYPE_4__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @read_header_block(i32** %10, i32* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.TYPE_4__* @apr_pcalloc(i32* %18, i32 96)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @HEADER_ID, align 4
  %22 = call i8* @svn_hash_gets(i32* %20, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %5, align 8
  br label %267

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @svn_stream_close(i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @svn_fs_fs__id_parse(i32* %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @HEADER_TYPE, align 4
  %42 = call i8* @svn_hash_gets(i32* %40, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %29
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @SVN_FS_FS__KIND_FILE, align 4
  %48 = call i64 @strcmp(i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @SVN_FS_FS__KIND_DIR, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %29
  %56 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %57 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %13, align 8
  %59 = call i32* @svn_error_createf(i32 %56, i32* null, i32 %57, i8* %58)
  store i32* %59, i32** %5, align 8
  br label %267

60:                                               ; preds = %50, %45
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* @SVN_FS_FS__KIND_FILE, align 4
  %63 = call i64 @strcmp(i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @svn_node_file, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @svn_node_dir, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @HEADER_COUNT, align 4
  %75 = call i8* @svn_hash_gets(i32* %73, i32 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 12
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @svn_cstring_atoi(i64* %80, i8* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %87

84:                                               ; preds = %69
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 12
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @HEADER_PROPS, align 4
  %90 = call i8* @svn_hash_gets(i32* %88, i32 %89)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 11
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @read_rep_offsets(i32* %95, i8* %96, i32 %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %93, %87
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @HEADER_TEXT, align 4
  %107 = call i8* @svn_hash_gets(i32* %105, i32 %106)
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 10
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @read_rep_offsets(i32* %112, i8* %113, i32 %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* @HEADER_CPATH, align 4
  %124 = call i8* @svn_hash_gets(i32* %122, i32 %123)
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %129 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i8*, i8** %13, align 8
  %131 = call i32* @svn_error_createf(i32 %128, i32* null, i32 %129, i8* %130)
  store i32* %131, i32** %5, align 8
  br label %267

132:                                              ; preds = %121
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @svn_fspath__is_canonical(i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %138 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i8*, i8** %13, align 8
  %140 = call i32* @svn_error_createf(i32 %137, i32* null, i32 %138, i8* %139)
  store i32* %140, i32** %5, align 8
  br label %267

141:                                              ; preds = %132
  %142 = load i32*, i32** %8, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = call i8* @apr_pstrdup(i32* %142, i8* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %141
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* @HEADER_PRED, align 4
  %150 = call i8* @svn_hash_gets(i32* %148, i32 %149)
  store i8* %150, i8** %12, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 9
  %156 = load i8*, i8** %12, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @svn_fs_fs__id_parse(i32* %155, i8* %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  br label %160

160:                                              ; preds = %153, %147
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* @HEADER_COPYROOT, align 4
  %163 = call i8* @svn_hash_gets(i32* %161, i32 %162)
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @apr_pstrdup(i32* %167, i8* %170)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @svn_fs_fs__id_rev(i32 %176)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 8
  br label %199

180:                                              ; preds = %160
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 7
  %183 = call i32 @parse_revnum(i32* %182, i8** %12)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @svn_fspath__is_canonical(i8* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %190 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i8*, i8** %13, align 8
  %192 = call i32* @svn_error_createf(i32 %189, i32* null, i32 %190, i8* %191)
  store i32* %192, i32** %5, align 8
  br label %267

193:                                              ; preds = %180
  %194 = load i32*, i32** %8, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i8* @apr_pstrdup(i32* %194, i8* %195)
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  br label %199

199:                                              ; preds = %193, %166
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* @HEADER_COPYFROM, align 4
  %202 = call i8* @svn_hash_gets(i32* %200, i32 %201)
  store i8* %202, i8** %12, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  store i32* null, i32** %207, align 8
  %208 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  br label %232

211:                                              ; preds = %199
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 5
  %214 = call i32 @parse_revnum(i32* %213, i8** %12)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load i8*, i8** %12, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %211
  %221 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %222 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %223 = load i8*, i8** %13, align 8
  %224 = call i32* @svn_error_createf(i32 %221, i32* null, i32 %222, i8* %223)
  store i32* %224, i32** %5, align 8
  br label %267

225:                                              ; preds = %211
  %226 = load i32*, i32** %8, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = call i8* @apr_pstrdup(i32* %226, i8* %227)
  %229 = bitcast i8* %228 to i32*
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  store i32* %229, i32** %231, align 8
  br label %232

232:                                              ; preds = %225, %205
  %233 = load i32*, i32** %10, align 8
  %234 = load i32, i32* @HEADER_FRESHTXNRT, align 4
  %235 = call i8* @svn_hash_gets(i32* %233, i32 %234)
  store i8* %235, i8** %12, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = icmp ne i8* %236, null
  %238 = zext i1 %237 to i32
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* @HEADER_MINFO_CNT, align 4
  %243 = call i8* @svn_hash_gets(i32* %241, i32 %242)
  store i8* %243, i8** %12, align 8
  %244 = load i8*, i8** %12, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %232
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i8*, i8** %12, align 8
  %250 = call i32 @svn_cstring_atoi64(i64* %248, i8* %249)
  %251 = call i32 @SVN_ERR(i32 %250)
  br label %255

252:                                              ; preds = %232
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %246
  %256 = load i32*, i32** %10, align 8
  %257 = load i32, i32* @HEADER_MINFO_HERE, align 4
  %258 = call i8* @svn_hash_gets(i32* %256, i32 %257)
  store i8* %258, i8** %12, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = icmp ne i8* %259, null
  %261 = zext i1 %260 to i32
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %265 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %264, %struct.TYPE_4__** %265, align 8
  %266 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %266, i32** %5, align 8
  br label %267

267:                                              ; preds = %255, %220, %188, %136, %127, %55, %25
  %268 = load i32*, i32** %5, align 8
  ret i32* %268
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_header_block(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_fs_fs__id_parse(i32*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @svn_cstring_atoi(i64*, i8*) #1

declare dso_local i32 @read_rep_offsets(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fspath__is_canonical(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_fs__id_rev(i32) #1

declare dso_local i32 @parse_revnum(i32*, i8**) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
