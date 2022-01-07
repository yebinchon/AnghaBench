; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_tweak_statushash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_tweak_statushash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i8*, i32, i32, i32, i8*, i32, i64, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.dir_baton = type { i8*, i8*, i32, i64, i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.file_baton = type { i8*, i8*, i32, %struct.TYPE_19__*, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* }

@svn_wc_status_added = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@svn_wc_status_replaced = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64, i32*, i64, i8*, i32, i32, i32, i64, i32*, i32*)* @tweak_statushash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tweak_statushash(i8* %0, i8* %1, i64 %2, i32* %3, i64 %4, i8* %5, i32 %6, i32 %7, i32 %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_21__*, align 8
  %30 = alloca %struct.dir_baton*, align 8
  %31 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i8* %5, i8** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %12
  %35 = load i8*, i8** %14, align 8
  %36 = bitcast i8* %35 to %struct.dir_baton*
  %37 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %28, align 8
  br label %46

39:                                               ; preds = %12
  %40 = load i8*, i8** %14, align 8
  %41 = bitcast i8* %40 to %struct.file_baton*
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 6
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %28, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32*, i32** %28, align 8
  %48 = call i32* @apr_hash_pool_get(i32* %47)
  store i32* %48, i32** %27, align 8
  %49 = load i32*, i32** %28, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = call %struct.TYPE_20__* @svn_hash_gets(i32* %49, i8* %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %26, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %53 = icmp ne %struct.TYPE_20__* %52, null
  br i1 %53, label %79, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @svn_wc_status_added, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %13, align 8
  br label %301

60:                                               ; preds = %54
  %61 = load i32*, i32** %17, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i32*, i32** %27, align 8
  %65 = load i32*, i32** %25, align 8
  %66 = call i32 @internal_status(%struct.TYPE_21__** %29, i32* %61, i8* %62, i64 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %26, align 8
  %70 = load i32*, i32** %24, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 11
  store i32* %70, i32** %72, align 8
  %73 = load i32*, i32** %28, align 8
  %74 = load i32*, i32** %27, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = call i8* @apr_pstrdup(i32* %74, i8* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %78 = call i32 @svn_hash_sets(i32* %73, i8* %76, %struct.TYPE_20__* %77)
  br label %79

79:                                               ; preds = %60, %46
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* @svn_wc_status_added, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @svn_wc_status_deleted, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @svn_wc_status_replaced, align 4
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %89, %83, %79
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %20, align 4
  %96 = zext i32 %95 to i64
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %21, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %22, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* %16, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %230

116:                                              ; preds = %113
  %117 = load i8*, i8** %15, align 8
  %118 = bitcast i8* %117 to %struct.dir_baton*
  store %struct.dir_baton* %118, %struct.dir_baton** %30, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %173, label %123

123:                                              ; preds = %116
  %124 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %125 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %173

128:                                              ; preds = %123
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @svn_wc_status_deleted, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %136 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @svn_dirent_basename(i8* %138, i32* null)
  %140 = load i32*, i32** %27, align 8
  %141 = call i8* @svn_relpath_join(i8* %137, i32 %139, i32* %140)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  br label %152

144:                                              ; preds = %128
  %145 = load i32*, i32** %27, align 8
  %146 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %147 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @apr_pstrdup(i32* %145, i8* %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 7
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %144, %134
  %153 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %154 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %153, i32 0, i32 5
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %164 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %163, i32 0, i32 5
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %152, %123, %116
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @svn_wc_status_deleted, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %173
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load i64, i64* %23, align 8
  %186 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %179
  %189 = load i8*, i8** %14, align 8
  %190 = bitcast i8* %189 to %struct.dir_baton*
  %191 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 9
  store i64 %192, i64* %194, align 8
  br label %199

195:                                              ; preds = %179
  %196 = load i64, i64* %23, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 9
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %195, %188
  br label %229

200:                                              ; preds = %173
  %201 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %202 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %207 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 9
  store i64 %208, i64* %210, align 8
  %211 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %212 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  %216 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %217 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %200
  %221 = load i32*, i32** %27, align 8
  %222 = load %struct.dir_baton*, %struct.dir_baton** %30, align 8
  %223 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i8* @apr_pstrdup(i32* %221, i8* %224)
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %220, %200
  br label %229

229:                                              ; preds = %228, %199
  br label %299

230:                                              ; preds = %113
  %231 = load i8*, i8** %14, align 8
  %232 = bitcast i8* %231 to %struct.file_baton*
  store %struct.file_baton* %232, %struct.file_baton** %31, align 8
  %233 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %234 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 9
  store i64 %235, i64* %237, align 8
  %238 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %239 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 8
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 7
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %280, label %247

247:                                              ; preds = %230
  %248 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %249 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %280

252:                                              ; preds = %247
  %253 = load i32*, i32** %27, align 8
  %254 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %255 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @apr_pstrdup(i32* %253, i8* %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  %260 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %261 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %260, i32 0, i32 3
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 6
  store i32 %267, i32* %269, align 8
  %270 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %271 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %270, i32 0, i32 3
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 5
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %252, %247, %230
  %281 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %282 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 4
  store i32 %283, i32* %285, align 8
  %286 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %287 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %298

290:                                              ; preds = %280
  %291 = load i32*, i32** %27, align 8
  %292 = load %struct.file_baton*, %struct.file_baton** %31, align 8
  %293 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i8* @apr_pstrdup(i32* %291, i8* %294)
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %290, %280
  br label %299

299:                                              ; preds = %298, %229
  %300 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %300, i32** %13, align 8
  br label %301

301:                                              ; preds = %299, %58
  %302 = load i32*, i32** %13, align 8
  ret i32* %302
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_20__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @internal_status(%struct.TYPE_21__**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_20__*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
