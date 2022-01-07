; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_svn_client__copy_foreign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_svn_client__copy_foreign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"'%s' is not a valid location inside a repository\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"'%s' is already under version control\00", align 1
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't add '%s', because no parent directory is found\00", align 1
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__copy_foreign(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_8__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @svn_path_is_url(i8* %29)
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @svn_dirent_is_absolute(i8* %32)
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = call i32 @svn_client__ra_session_from_path2(i32** %20, %struct.TYPE_9__** %21, i8* %35, i32* null, i32* %36, i32* %37, %struct.TYPE_8__* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %20, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %19, align 8
  %47 = call i32 @svn_ra_check_path(i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %45, i64* %22, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %22, align 8
  %50 = load i64, i64* @svn_node_file, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %9
  %53 = load i64, i64* %22, align 8
  %54 = load i64, i64* @svn_node_dir, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %11, align 8
  %60 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i8* %59)
  store i32* %60, i32** %10, align 8
  br label %276

61:                                               ; preds = %52, %9
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @svn_wc_read_kind2(i64* %23, i32 %64, i8* %65, i32 %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i64, i64* %23, align 8
  %72 = load i64, i64* @svn_node_none, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** %12, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = call i8* @svn_dirent_local_style(i8* %77, i32* %78)
  %80 = call i32* @svn_error_createf(i32 %75, i32* null, i32 %76, i8* %79)
  store i32* %80, i32** %10, align 8
  br label %276

81:                                               ; preds = %61
  %82 = load i8*, i8** %12, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i8* @svn_dirent_dirname(i8* %82, i32* %83)
  store i8* %84, i8** %24, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %24, align 8
  %89 = load i32, i32* @FALSE, align 4
  %90 = load i32, i32* @FALSE, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = call i32 @svn_wc_read_kind2(i64* %23, i32 %87, i8* %88, i32 %89, i32 %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* @svn_node_none, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %81
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i8*, i8** %24, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @svn_client__make_local_parents(i8* %101, i32 %102, %struct.TYPE_8__* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %24, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @svn_wc_read_kind2(i64* %23, i32 %110, i8* %111, i32 %112, i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %107, %81
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* @svn_node_dir, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %123 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i8*, i8** %12, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = call i8* @svn_dirent_local_style(i8* %124, i32* %125)
  %127 = call i32* @svn_error_createf(i32 %122, i32* null, i32 %123, i8* %126)
  store i32* %127, i32** %10, align 8
  br label %276

128:                                              ; preds = %117
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* @svn_node_file, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %218

132:                                              ; preds = %128
  %133 = load i8*, i8** %12, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = call i32 @svn_stream_open_writable(i32** %25, i8* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i32*, i32** %20, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %25, align 8
  %143 = load i32*, i32** %19, align 8
  %144 = call i32 @svn_ra_get_file(i32* %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %141, i32* %142, i32* null, i32** %26, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i32*, i32** %26, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %176

148:                                              ; preds = %132
  %149 = load i32*, i32** %19, align 8
  %150 = load i32*, i32** %26, align 8
  %151 = call i32* @apr_hash_first(i32* %149, i32* %150)
  store i32* %151, i32** %27, align 8
  br label %152

152:                                              ; preds = %172, %148
  %153 = load i32*, i32** %27, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load i32*, i32** %27, align 8
  %157 = call i8* @apr_hash_this_key(i32* %156)
  store i8* %157, i8** %28, align 8
  %158 = load i8*, i8** %28, align 8
  %159 = call i64 @svn_property_kind2(i8* %158)
  %160 = load i64, i64* @svn_prop_regular_kind, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %167, label %162

162:                                              ; preds = %155
  %163 = load i8*, i8** %28, align 8
  %164 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %165 = call i32 @strcmp(i8* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162, %155
  %168 = load i32*, i32** %26, align 8
  %169 = load i8*, i8** %28, align 8
  %170 = call i32 @svn_hash_sets(i32* %168, i8* %169, i32* null)
  br label %171

171:                                              ; preds = %167, %162
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %27, align 8
  %174 = call i32* @apr_hash_next(i32* %173)
  store i32* %174, i32** %27, align 8
  br label %152

175:                                              ; preds = %152
  br label %176

176:                                              ; preds = %175, %132
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %201, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = load i32*, i32** %26, align 8
  %185 = load i32, i32* @TRUE, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %19, align 8
  %193 = call i32 @svn_wc_add_from_disk3(i32 %182, i8* %183, i32* %184, i32 %185, i32 %188, i32 %191, i32* %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %24, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = load i32*, i32** %19, align 8
  %200 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %193, i32 %196, i8* %197, i32 %198, i32* %199)
  br label %217

201:                                              ; preds = %176
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i8*, i8** %12, align 8
  %206 = load i32*, i32** %26, align 8
  %207 = load i32, i32* @TRUE, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %19, align 8
  %215 = call i32 @svn_wc_add_from_disk3(i32 %204, i8* %205, i32* %206, i32 %207, i32 %210, i32 %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  br label %217

217:                                              ; preds = %201, %179
  br label %274

218:                                              ; preds = %128
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %250, label %221

221:                                              ; preds = %218
  %222 = load i32*, i32** %20, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %19, align 8
  %242 = call i32 @copy_foreign_dir(i32* %222, %struct.TYPE_9__* %223, i32 %226, i8* %227, i32 %228, i32 %231, i32 %234, i32 %237, i32 %240, i32* %241)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = load i8*, i8** %24, align 8
  %247 = load i32, i32* @FALSE, align 4
  %248 = load i32*, i32** %19, align 8
  %249 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %242, i32 %245, i8* %246, i32 %247, i32* %248)
  br label %273

250:                                              ; preds = %218
  %251 = load i32*, i32** %20, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %12, align 8
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %19, align 8
  %271 = call i32 @copy_foreign_dir(i32* %251, %struct.TYPE_9__* %252, i32 %255, i8* %256, i32 %257, i32 %260, i32 %263, i32 %266, i32 %269, i32* %270)
  %272 = call i32 @SVN_ERR(i32 %271)
  br label %273

273:                                              ; preds = %250, %221
  br label %274

274:                                              ; preds = %273, %217
  %275 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %275, i32** %10, align 8
  br label %276

276:                                              ; preds = %274, %121, %74, %56
  %277 = load i32*, i32** %10, align 8
  ret i32* %277
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_9__**, i8*, i32*, i32*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_client__make_local_parents(i8*, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_stream_open_writable(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc_add_from_disk3(i32, i8*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @copy_foreign_dir(i32*, %struct.TYPE_9__*, i32, i8*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
