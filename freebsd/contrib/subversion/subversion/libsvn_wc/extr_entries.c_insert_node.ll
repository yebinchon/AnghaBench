; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_insert_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@STMT_INSERT_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"isdsnnnnsn\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@presence_map = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kind_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"The file '%s' has no checksum\00", align 1
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i32*)* @insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @insert_node(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @svn_wc__db_status_normal, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br label %33

33:                                               ; preds = %28, %21
  %34 = phi i1 [ true, %21 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @STMT_INSERT_NODE, align 4
  %39 = call i32 @svn_sqlite__get_statement(i32** %8, i32* %37, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_node_dir, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %33
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @svn_depth_to_word(i32 %65)
  br label %68

67:                                               ; preds = %59, %33
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32* [ %66, %62 ], [ null, %67 ]
  %70 = call i32 @svn_sqlite__bindf(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @svn_sqlite__bind_revnum(i32* %80, i32 11, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @svn_sqlite__bind_int64(i32* %86, i32 12, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @svn_sqlite__bind_text(i32* %92, i32 13, i8* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %98

98:                                               ; preds = %79, %74, %68
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %128

103:                                              ; preds = %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @svn_sqlite__bind_int64(i32* %110, i32 5, i32 %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @svn_sqlite__bind_text(i32* %116, i32 6, i8* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @svn_sqlite__bind_revnum(i32* %122, i32 7, i32 %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %128

128:                                              ; preds = %109, %103, %98
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* @presence_map, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @svn_sqlite__bind_token(i32* %129, i32 8, i32 %130, i64 %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @svn_node_none, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @svn_sqlite__bind_text(i32* %142, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %144 = call i32 @SVN_ERR(i32 %143)
  br label %153

145:                                              ; preds = %128
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* @kind_map, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @svn_sqlite__bind_token(i32* %146, i32 10, i32 %147, i64 %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  br label %153

153:                                              ; preds = %145, %141
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @svn_node_file, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %232

159:                                              ; preds = %153
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %232

162:                                              ; preds = %159
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %199, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %167
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %172
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %199

184:                                              ; preds = %178
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %192 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 10
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 @svn_dirent_local_style(i32 %195, i32* %196)
  %198 = call i32* @svn_error_createf(i32 %191, i32* null, i32 %192, i32 %197)
  store i32* %198, i32** %4, align 8
  br label %283

199:                                              ; preds = %184, %178, %172, %167, %162
  %200 = load i32*, i32** %8, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @svn_sqlite__bind_checksum(i32* %200, i32 14, i32 %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %231

211:                                              ; preds = %199
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load i32*, i32** %8, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @svn_sqlite__bind_int64(i32* %218, i32 16, i32 %221)
  %223 = call i32 @SVN_ERR(i32 %222)
  br label %224

224:                                              ; preds = %217, %211
  %225 = load i32*, i32** %8, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @svn_sqlite__bind_int64(i32* %225, i32 17, i32 %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  br label %231

231:                                              ; preds = %224, %199
  br label %232

232:                                              ; preds = %231, %159, %153
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %232
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %237
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load i32*, i32** %8, align 8
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @svn_sqlite__bind_properties(i32* %246, i32 15, i32 %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32 %251)
  br label %253

253:                                              ; preds = %245, %240, %237, %232
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @svn_sqlite__bind_int(i32* %259, i32 20, i32 1)
  %261 = call i32 @SVN_ERR(i32 %260)
  br label %262

262:                                              ; preds = %258, %253
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %262
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load i32*, i32** %8, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 @svn_sqlite__bind_iprops(i32* %271, i32 23, i32 %274, i32* %275)
  %277 = call i32 @SVN_ERR(i32 %276)
  br label %278

278:                                              ; preds = %270, %267, %262
  %279 = load i32*, i32** %8, align 8
  %280 = call i32 @svn_sqlite__insert(i32* null, i32* %279)
  %281 = call i32 @SVN_ERR(i32 %280)
  %282 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %282, i32** %4, align 8
  br label %283

283:                                              ; preds = %278, %190
  %284 = load i32*, i32** %4, align 8
  ret i32* %284
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_depth_to_word(i32) #1

declare dso_local i32 @svn_sqlite__bind_revnum(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_int64(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_text(i32*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__bind_token(i32*, i32, i32, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_int(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_iprops(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
