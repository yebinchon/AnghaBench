; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_deltify_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_deltify_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.txn_deltify_args = type { i8*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.txn_pred_count_args = type { i8*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.txn_pred_id_args = type { i8*, i32, i32, i32*, i32*, i32*, i32*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@txn_body_txn_deltify = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@txn_body_pred_count = common dso_local global i32 0, align 4
@SVN_FS_BASE__MIN_MISCELLANY_FORMAT = common dso_local global i64 0, align 8
@SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE = common dso_local global i32 0, align 4
@SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT = common dso_local global i64 0, align 8
@txn_body_pred_id = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Corrupt DB: faulty predecessor count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i32*, i64, i8*, i32*)* @deltify_mutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @deltify_mutable(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2, i32* %3, i64 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.txn_deltify_args, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.txn_pred_count_args, align 8
  %28 = alloca [2 x i32*], align 16
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.txn_pred_id_args, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.txn_pred_id_args, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %37 = load i32*, i32** %12, align 8
  store i32* %37, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %19, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %7
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32* @base_node_id(i32** %16, %struct.TYPE_13__* %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32* %47)
  br label %49

49:                                               ; preds = %43, %7
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @svn_fs_base__id_txn_id(i32* %50)
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @strcmp(i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %8, align 8
  br label %366

57:                                               ; preds = %49
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @svn_node_unknown, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32* @base_check_path(i64* %13, %struct.TYPE_13__* %62, i8* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32* %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @svn_node_dir, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32* @base_dir_entries(i32** %17, %struct.TYPE_13__* %72, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32* %75)
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32*, i32** %17, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %77
  %81 = load i32*, i32** %15, align 8
  %82 = call i32* @svn_pool_create(i32* %81)
  store i32* %82, i32** %20, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i32* @apr_hash_first(i32* %83, i32* %84)
  store i32* %85, i32** %21, align 8
  br label %86

86:                                               ; preds = %112, %80
  %87 = load i32*, i32** %21, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @svn_pool_clear(i32* %90)
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @apr_hash_this(i32* %92, i8** %22, i32* null, i8** %23)
  %94 = load i8*, i8** %23, align 8
  %95 = bitcast i8* %94 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %24, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %22, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = call i8* @svn_fspath__join(i8* %98, i8* %99, i32* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i32*, i32** %20, align 8
  %110 = call i32* @deltify_mutable(%struct.TYPE_12__* %96, %struct.TYPE_13__* %97, i8* %101, i32* %104, i64 %107, i8* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32* %110)
  br label %112

112:                                              ; preds = %89
  %113 = load i32*, i32** %21, align 8
  %114 = call i32* @apr_hash_next(i32* %113)
  store i32* %114, i32** %21, align 8
  br label %86

115:                                              ; preds = %86
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @svn_pool_destroy(i32* %116)
  br label %118

118:                                              ; preds = %115, %77
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 4
  store i32* %121, i32** %122, align 8
  %123 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @svn_node_dir, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = load i32, i32* @txn_body_txn_deltify, align 4
  %131 = bitcast %struct.txn_deltify_args* %18 to %struct.txn_pred_id_args*
  %132 = load i32, i32* @TRUE, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %129, i32 %130, %struct.txn_pred_id_args* %131, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32* %134)
  store i32 0, i32* %29, align 4
  store i64 0, i64* %30, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = getelementptr inbounds %struct.txn_pred_count_args, %struct.txn_pred_count_args* %27, i32 0, i32 7
  store i32* %136, i32** %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = load i32, i32* @txn_body_pred_count, align 4
  %140 = bitcast %struct.txn_pred_count_args* %27 to %struct.txn_pred_id_args*
  %141 = load i32, i32* @TRUE, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %138, i32 %139, %struct.txn_pred_id_args* %140, i32 %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32* %143)
  %145 = getelementptr inbounds %struct.txn_pred_count_args, %struct.txn_pred_count_args* %27, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %118
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %150, i32** %8, align 8
  br label %366

151:                                              ; preds = %118
  %152 = load i32*, i32** %15, align 8
  %153 = call i32* @svn_pool_create(i32* %152)
  %154 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 0
  store i32* %153, i32** %154, align 16
  %155 = load i32*, i32** %15, align 8
  %156 = call i32* @svn_pool_create(i32* %155)
  %157 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 1
  store i32* %156, i32** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SVN_FS_BASE__MIN_MISCELLANY_FORMAT, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %151
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = load i32, i32* @SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = call i32* @svn_fs_base__miscellaneous_get(i8** %31, %struct.TYPE_12__* %164, i32 %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32* %167)
  %169 = load i8*, i8** %31, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i8*, i8** %31, align 8
  %173 = call i32* @svn_revnum_parse(i64* %30, i8* %172, i32* null)
  %174 = call i32 @SVN_ERR(i32* %173)
  br label %175

175:                                              ; preds = %171, %163
  br label %176

176:                                              ; preds = %175, %151
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %257

182:                                              ; preds = %176
  %183 = load i64, i64* %30, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sle i64 %183, %186
  br i1 %187, label %188, label %257

188:                                              ; preds = %182
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %25, align 4
  %191 = sub nsw i32 %190, 1
  %192 = and i32 %189, %191
  store i32 %192, i32* %25, align 4
  %193 = load i32*, i32** %16, align 8
  store i32* %193, i32** %26, align 8
  br label %194

194:                                              ; preds = %234, %188
  %195 = load i32, i32* %25, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %25, align 4
  %197 = getelementptr inbounds %struct.txn_pred_count_args, %struct.txn_pred_count_args* %27, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %235

200:                                              ; preds = %194
  %201 = load i32, i32* %29, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %29, align 4
  %205 = load i32, i32* %29, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @svn_pool_clear(i32* %208)
  %210 = load i32*, i32** %26, align 8
  %211 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %32, i32 0, i32 7
  store i32* %210, i32** %211, align 8
  %212 = load i32, i32* %29, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %32, i32 0, i32 6
  store i32* %215, i32** %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %218 = load i32, i32* @txn_body_pred_id, align 4
  %219 = load i32, i32* @FALSE, align 4
  %220 = load i32, i32* %29, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %217, i32 %218, %struct.txn_pred_id_args* %32, i32 %219, i32* %223)
  %225 = call i32 @SVN_ERR(i32* %224)
  %226 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %32, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  store i32* %227, i32** %26, align 8
  %228 = load i32*, i32** %26, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %200
  %231 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %232 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %233 = call i32* @svn_error_create(i32 %231, i32 0, i32 %232)
  store i32* %233, i32** %8, align 8
  br label %366

234:                                              ; preds = %200
  br label %194

235:                                              ; preds = %194
  %236 = load i8*, i8** %14, align 8
  %237 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 0
  store i8* %236, i8** %237, align 8
  %238 = load i32*, i32** %16, align 8
  %239 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 4
  store i32* %238, i32** %239, align 8
  %240 = load i32*, i32** %26, align 8
  %241 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 3
  store i32* %240, i32** %241, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i64, i64* @svn_node_dir, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 1
  store i32 %245, i32* %246, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %248 = load i32, i32* @txn_body_txn_deltify, align 4
  %249 = bitcast %struct.txn_deltify_args* %18 to %struct.txn_pred_id_args*
  %250 = load i32, i32* @TRUE, align 4
  %251 = load i32, i32* %29, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %247, i32 %248, %struct.txn_pred_id_args* %249, i32 %250, i32* %254)
  %256 = call i32 @SVN_ERR(i32* %255)
  br label %358

257:                                              ; preds = %182, %176
  store i32 1, i32* %33, align 4
  %258 = load i32, i32* %25, align 4
  %259 = icmp sge i32 %258, 32
  br i1 %259, label %260, label %280

260:                                              ; preds = %257
  br label %261

261:                                              ; preds = %265, %260
  %262 = load i32, i32* %25, align 4
  %263 = srem i32 %262, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i32, i32* %25, align 4
  %267 = sdiv i32 %266, 2
  store i32 %267, i32* %25, align 4
  %268 = load i32, i32* %33, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %33, align 4
  br label %261

270:                                              ; preds = %261
  %271 = load i32, i32* %33, align 4
  %272 = sub nsw i32 %271, 1
  %273 = shl i32 1, %272
  %274 = load i32, i32* %25, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %33, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %33, align 4
  br label %279

279:                                              ; preds = %276, %270
  br label %280

280:                                              ; preds = %279, %257
  store i32 0, i32* %35, align 4
  %281 = load i32*, i32** %16, align 8
  store i32* %281, i32** %26, align 8
  store i32 0, i32* %34, align 4
  br label %282

282:                                              ; preds = %354, %280
  %283 = load i32, i32* %34, align 4
  %284 = load i32, i32* %33, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %357

286:                                              ; preds = %282
  %287 = load i32, i32* %34, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  br label %354

290:                                              ; preds = %286
  br label %291

291:                                              ; preds = %330, %290
  %292 = load i32, i32* %35, align 4
  %293 = load i32, i32* %34, align 4
  %294 = shl i32 1, %293
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %296, label %333

296:                                              ; preds = %291
  %297 = load i32, i32* %29, align 4
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %29, align 4
  %301 = load i32, i32* %29, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @svn_pool_clear(i32* %304)
  %306 = load i32*, i32** %26, align 8
  %307 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %36, i32 0, i32 7
  store i32* %306, i32** %307, align 8
  %308 = load i32, i32* %29, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %36, i32 0, i32 6
  store i32* %311, i32** %312, align 8
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %314 = load i32, i32* @txn_body_pred_id, align 4
  %315 = load i32, i32* @FALSE, align 4
  %316 = load i32, i32* %29, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %313, i32 %314, %struct.txn_pred_id_args* %36, i32 %315, i32* %319)
  %321 = call i32 @SVN_ERR(i32* %320)
  %322 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %36, i32 0, i32 5
  %323 = load i32*, i32** %322, align 8
  store i32* %323, i32** %26, align 8
  %324 = load i32*, i32** %26, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %296
  %327 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %328 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %329 = call i32* @svn_error_create(i32 %327, i32 0, i32 %328)
  store i32* %329, i32** %8, align 8
  br label %366

330:                                              ; preds = %296
  %331 = load i32, i32* %35, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %35, align 4
  br label %291

333:                                              ; preds = %291
  %334 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 0
  store i8* null, i8** %334, align 8
  %335 = load i32*, i32** %26, align 8
  %336 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 4
  store i32* %335, i32** %336, align 8
  %337 = load i32*, i32** %16, align 8
  %338 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 3
  store i32* %337, i32** %338, align 8
  %339 = load i64, i64* %13, align 8
  %340 = load i64, i64* @svn_node_dir, align 8
  %341 = icmp eq i64 %339, %340
  %342 = zext i1 %341 to i32
  %343 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %18, i32 0, i32 1
  store i32 %342, i32* %343, align 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %345 = load i32, i32* @txn_body_txn_deltify, align 4
  %346 = bitcast %struct.txn_deltify_args* %18 to %struct.txn_pred_id_args*
  %347 = load i32, i32* @TRUE, align 4
  %348 = load i32, i32* %29, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = call i32* @svn_fs_base__retry_txn(%struct.TYPE_12__* %344, i32 %345, %struct.txn_pred_id_args* %346, i32 %347, i32* %351)
  %353 = call i32 @SVN_ERR(i32* %352)
  br label %354

354:                                              ; preds = %333, %289
  %355 = load i32, i32* %34, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %34, align 4
  br label %282

357:                                              ; preds = %282
  br label %358

358:                                              ; preds = %357, %235
  %359 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 0
  %360 = load i32*, i32** %359, align 16
  %361 = call i32 @svn_pool_destroy(i32* %360)
  %362 = getelementptr inbounds [2 x i32*], [2 x i32*]* %28, i64 0, i64 1
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @svn_pool_destroy(i32* %363)
  %365 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %365, i32** %8, align 8
  br label %366

366:                                              ; preds = %358, %326, %230, %149, %55
  %367 = load i32*, i32** %8, align 8
  ret i32* %367
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @base_node_id(i32**, %struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_fs_base__id_txn_id(i32*) #1

declare dso_local i32* @base_check_path(i64*, %struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32* @base_dir_entries(i32**, %struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_base__retry_txn(%struct.TYPE_12__*, i32, %struct.txn_pred_id_args*, i32, i32*) #1

declare dso_local i32* @svn_fs_base__miscellaneous_get(i8**, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32* @svn_revnum_parse(i64*, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
