; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_node_location_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_node_location_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i8* }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_node_location_segments(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5, i8* %6, i32 (i32*, i32*, i8*, i8*, i32*)* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32 (i32*, i32*, i8*, i8*, i32*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_8__*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 (i32*, i32*, i8*, i8*, i32*)* %7, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32* @svn_repos_fs(i32* %38)
  store i32* %39, i32** %22, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = load i32*, i32** %21, align 8
  %42 = call i32 @svn_fs_youngest_rev(i64* %24, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @SVN_IS_VALID_REVNUM(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %10
  %48 = load i64, i64* %24, align 8
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %47, %10
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %24, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load i64, i64* %14, align 8
  %57 = call i32* @svn_error_createf(i32 %54, i32* null, i32 %55, i64 %56)
  store i32* %57, i32** %11, align 8
  br label %276

58:                                               ; preds = %49
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @SVN_IS_VALID_REVNUM(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %15, align 8
  br label %74

64:                                               ; preds = %58
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* %15, align 8
  %72 = call i32* @svn_error_createf(i32 %69, i32* null, i32 %70, i64 %71)
  store i32* %72, i32** %11, align 8
  br label %276

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @SVN_IS_VALID_REVNUM(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i64 0, i64* %16, align 8
  br label %89

79:                                               ; preds = %74
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %86 = load i64, i64* %16, align 8
  %87 = call i32* @svn_error_createf(i32 %84, i32* null, i32 %85, i64 %86)
  store i32* %87, i32** %11, align 8
  br label %276

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %15, align 8
  %92 = icmp sle i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @SVN_ERR_ASSERT(i32 %93)
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp sle i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @SVN_ERR_ASSERT(i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 47
  br i1 %103, label %104, label %109

104:                                              ; preds = %89
  %105 = load i32*, i32** %21, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* @SVN_VA_NULL, align 4
  %108 = call i8* @apr_pstrcat(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %106, i32 %107)
  store i8* %108, i8** %13, align 8
  br label %109

109:                                              ; preds = %104, %89
  %110 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %111 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i32*, i32** %22, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @svn_fs_revision_root(i32** %27, i32* %113, i64 %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %27, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %121 = load i8*, i8** %20, align 8
  %122 = load i32*, i32** %21, align 8
  %123 = call i32 @check_readability(i32* %118, i8* %119, i32 (i32*, i32*, i8*, i8*, i32*)* %120, i8* %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  br label %125

125:                                              ; preds = %112, %109
  %126 = load i32*, i32** %21, align 8
  %127 = call i32* @svn_pool_create(i32* %126)
  store i32* %127, i32** %26, align 8
  %128 = load i64, i64* %14, align 8
  store i64 %128, i64* %25, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = call %struct.TYPE_7__* @svn_stringbuf_create(i8* %129, i32* %130)
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %23, align 8
  br label %132

132:                                              ; preds = %271, %125
  %133 = load i64, i64* %25, align 8
  %134 = load i64, i64* %16, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %272

136:                                              ; preds = %132
  %137 = load i32*, i32** %26, align 8
  %138 = call i32 @svn_pool_clear(i32* %137)
  %139 = load i32*, i32** %26, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @apr_pstrmemdup(i32* %139, i32 %142, i32 %145)
  store i8* %146, i8** %30, align 8
  %147 = load i32*, i32** %26, align 8
  %148 = call %struct.TYPE_8__* @apr_pcalloc(i32* %147, i32 24)
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %32, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load i8*, i8** %30, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i32*, i32** %22, align 8
  %160 = load i64, i64* %25, align 8
  %161 = load i8*, i8** %30, align 8
  %162 = load i32*, i32** %26, align 8
  %163 = call i32 @svn_repos__prev_location(i64* %28, i8** %31, i64* %29, i32* %159, i64 %160, i8* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i8*, i8** %31, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %191, label %167

167:                                              ; preds = %136
  %168 = load i32*, i32** %22, align 8
  %169 = load i64, i64* %25, align 8
  %170 = load i32*, i32** %26, align 8
  %171 = call i32 @svn_fs_revision_root(i32** %33, i32* %168, i64 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32*, i32** %33, align 8
  %176 = load i8*, i8** %30, align 8
  %177 = load i32*, i32** %26, align 8
  %178 = call i32 @svn_fs_node_origin_rev(i64* %174, i32* %175, i8* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %16, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %167
  %186 = load i64, i64* %16, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %167
  %190 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %190, i64* %25, align 8
  br label %199

191:                                              ; preds = %136
  %192 = load i64, i64* %28, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %196 = load i8*, i8** %31, align 8
  %197 = call i32 @svn_stringbuf_set(%struct.TYPE_7__* %195, i8* %196)
  %198 = load i64, i64* %29, align 8
  store i64 %198, i64* %25, align 8
  br label %199

199:                                              ; preds = %191, %189
  %200 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %201 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load i32*, i32** %26, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* @SVN_VA_NULL, align 4
  %208 = call i8* @apr_pstrcat(i32* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %206, i32 %207)
  store i8* %208, i8** %36, align 8
  %209 = load i32*, i32** %22, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32*, i32** %26, align 8
  %214 = call i32 @svn_fs_revision_root(i32** %35, i32* %209, i64 %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %19, align 8
  %217 = load i32*, i32** %35, align 8
  %218 = load i8*, i8** %36, align 8
  %219 = load i8*, i8** %20, align 8
  %220 = load i32*, i32** %26, align 8
  %221 = call i32 %216(i32* %34, i32* %217, i8* %218, i8* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  %223 = load i32, i32* %34, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %202
  %226 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %226, i32** %11, align 8
  br label %276

227:                                              ; preds = %202
  br label %228

228:                                              ; preds = %227, %199
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %230 = load i64, i64* %15, align 8
  %231 = load i64, i64* %16, align 8
  %232 = load i32, i32* %17, align 4
  %233 = load i8*, i8** %18, align 8
  %234 = load i32*, i32** %26, align 8
  %235 = call i32 @maybe_crop_and_send_segment(%struct.TYPE_8__* %229, i64 %230, i64 %231, i32 %232, i8* %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i64, i64* %25, align 8
  %238 = call i32 @SVN_IS_VALID_REVNUM(i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %228
  br label %272

241:                                              ; preds = %228
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %25, align 8
  %246 = sub nsw i64 %244, %245
  %247 = icmp sgt i64 %246, 1
  br i1 %247, label %248, label %271

248:                                              ; preds = %241
  %249 = load i32*, i32** %26, align 8
  %250 = call %struct.TYPE_8__* @apr_pcalloc(i32* %249, i32 24)
  store %struct.TYPE_8__* %250, %struct.TYPE_8__** %37, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %253, 1
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* %25, align 8
  %258 = add nsw i64 %257, 1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  store i8* null, i8** %262, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %264 = load i64, i64* %15, align 8
  %265 = load i64, i64* %16, align 8
  %266 = load i32, i32* %17, align 4
  %267 = load i8*, i8** %18, align 8
  %268 = load i32*, i32** %26, align 8
  %269 = call i32 @maybe_crop_and_send_segment(%struct.TYPE_8__* %263, i64 %264, i64 %265, i32 %266, i8* %267, i32* %268)
  %270 = call i32 @SVN_ERR(i32 %269)
  br label %271

271:                                              ; preds = %248, %241
  br label %132

272:                                              ; preds = %240, %132
  %273 = load i32*, i32** %26, align 8
  %274 = call i32 @svn_pool_destroy(i32* %273)
  %275 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %275, i32** %11, align 8
  br label %276

276:                                              ; preds = %272, %225, %83, %68, %53
  %277 = load i32*, i32** %11, align 8
  ret i32* %277
}

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @check_readability(i32*, i8*, i32 (i32*, i32*, i8*, i8*, i32*)*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_repos__prev_location(i64*, i8**, i64*, i32*, i64, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_origin_rev(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @maybe_crop_and_send_segment(%struct.TYPE_8__*, i64, i64, i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
