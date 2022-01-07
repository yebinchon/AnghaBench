; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_fold_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_fold_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i8*, i8*, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Missing required node revision ID\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid change ordering: new node revision ID without delete\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Invalid change ordering: non-add change on deleted path\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Invalid change ordering: add change on preexisting path\00", align 1
@TRUE = common dso_local global i8* null, align 8
@svn_tristate_true = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_12__*)* @fold_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fold_change(i32* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @apr_hash_pool_get(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %11, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %12, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_11__* @apr_hash_get(i32* %19, i32 %22, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %236

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 128
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %41 = call i32* @svn_error_create(i32 %39, i32* null, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %255

42:                                               ; preds = %33, %28
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @svn_fs_fs__id_eq(i64 %50, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 131
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32* @svn_error_create(i32 %62, i32* null, i32 %63)
  store i32* %64, i32** %4, align 8
  br label %255

65:                                               ; preds = %56, %47, %42
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 131
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 129
  br i1 %74, label %89, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 128
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 132
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32* @svn_error_create(i32 %86, i32* null, i32 %87)
  store i32* %88, i32** %4, align 8
  br label %255

89:                                               ; preds = %80, %75, %70, %65
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 132
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 131
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 128
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %106 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %107 = call i32* @svn_error_create(i32 %105, i32* null, i32 %106)
  store i32* %107, i32** %4, align 8
  br label %255

108:                                              ; preds = %99, %94, %89
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  switch i64 %111, label %206 [
    i64 128, label %112
    i64 131, label %121
    i64 132, label %175
    i64 129, label %175
    i64 130, label %205
  ]

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @apr_hash_set(i32* %113, i32 %116, i32 %119, %struct.TYPE_11__* null)
  br label %235

121:                                              ; preds = %108
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 132
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @apr_hash_set(i32* %127, i32 %130, i32 %133, %struct.TYPE_11__* null)
  br label %174

135:                                              ; preds = %121
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 129
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i32*, i32** %6, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_11__* @apr_hash_get(i32* %141, i32 %144, i32 %147)
  store %struct.TYPE_11__* %148, %struct.TYPE_11__** %10, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %150 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_11__* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = call i32 @apr_hash_set(i32* %151, i32 %154, i32 %157, %struct.TYPE_11__* %158)
  br label %173

160:                                              ; preds = %135
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call %struct.TYPE_11__* @path_change_dup(%struct.TYPE_11__* %161, i32* %162)
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %10, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = call i32 @apr_hash_set(i32* %164, i32 %167, i32 %170, %struct.TYPE_11__* %171)
  br label %173

173:                                              ; preds = %160, %140
  br label %174

174:                                              ; preds = %173, %126
  br label %235

175:                                              ; preds = %108, %108
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call %struct.TYPE_11__* @path_change_dup(%struct.TYPE_11__* %176, i32* %177)
  store %struct.TYPE_11__* %178, %struct.TYPE_11__** %10, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i64 129, i64* %180, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %189 = call i32 @apr_hash_set(i32* %181, i32 %184, i32 %187, %struct.TYPE_11__* %188)
  %190 = load i32*, i32** %6, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = call i32* @apr_hash_pool_get(i32* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @apr_pstrmemdup(i32* %192, i32 %195, i32 %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %204 = call i32 @apr_hash_set(i32* %190, i32 %199, i32 %202, %struct.TYPE_11__* %203)
  br label %235

205:                                              ; preds = %108
  br label %206

206:                                              ; preds = %108, %205
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i8*, i8** @TRUE, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %206
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load i8*, i8** @TRUE, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %220, %215
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @svn_tristate_true, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load i32, i32* @svn_tristate_true, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %224
  br label %235

235:                                              ; preds = %234, %175, %174, %112
  br label %253

236:                                              ; preds = %3
  %237 = load i32*, i32** %5, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @apr_pstrmemdup(i32* %238, i32 %241, i32 %244)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = call %struct.TYPE_11__* @path_change_dup(%struct.TYPE_11__* %249, i32* %250)
  %252 = call i32 @apr_hash_set(i32* %237, i32 %245, i32 %248, %struct.TYPE_11__* %251)
  br label %253

253:                                              ; preds = %236, %235
  %254 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %254, i32** %4, align 8
  br label %255

255:                                              ; preds = %253, %104, %85, %61, %38
  %256 = load i32*, i32** %4, align 8
  ret i32* %256
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_11__* @apr_hash_get(i32*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__id_eq(i64, i64) #1

declare dso_local i32 @apr_hash_set(i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @path_change_dup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @apr_pstrmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
