; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5dv_cq_init_attr = type { i32, i32 }
%struct.mlx5_create_cq = type { i64, i64, i32, i32, i32, i32 }
%struct.mlx5_create_cq_resp = type { i32, i32 }
%struct.mlx5_cq = type { i32, i32, i32, %struct.TYPE_5__, i64*, %struct.ibv_cq_ex, i32, i32, i32, i32, i32*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_context = type { i32, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i64 }

@MLX5_DBG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CQE invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CREATE_CQ_SUPPORTED_COMP_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported comp_mask for create_cq\0A\00", align 1
@IBV_CQ_INIT_ATTR_MASK_FLAGS = common dso_local global i32 0, align 4
@CREATE_CQ_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Unsupported creation flags requested for create_cq\0A\00", align 1
@CREATE_CQ_SUPPORTED_WC_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"ncqe %d\0A\00", align 1
@MLX5_CQ_SET_CI = common dso_local global i64 0, align 8
@MLX5_CQ_ARM_DB = common dso_local global i64 0, align 8
@IBV_CREATE_CQ_ATTR_SINGLE_THREADED = common dso_local global i32 0, align 4
@MLX5_CQ_FLAGS_SINGLE_THREADED = common dso_local global i32 0, align 4
@MLX5DV_CQ_INIT_ATTR_MASK_RESERVED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Unsupported vendor comp_mask for create_cq\0A\00", align 1
@MLX5DV_CQ_INIT_ATTR_MASK_COMPRESSED_CQE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"CQE Compression is not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ret %d\0A\00", align 1
@MLX5_CQ_FLAGS_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32, %struct.mlx5dv_cq_init_attr*)* @create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1, i32 %2, %struct.mlx5dv_cq_init_attr* %3) #0 {
  %5 = alloca %struct.ibv_cq_ex*, align 8
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5dv_cq_init_attr*, align 8
  %10 = alloca %struct.mlx5_create_cq, align 8
  %11 = alloca %struct.mlx5_create_cq_resp, align 4
  %12 = alloca %struct.mlx5_cq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx5_context*, align 8
  %17 = alloca i32*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5dv_cq_init_attr* %3, %struct.mlx5dv_cq_init_attr** %9, align 8
  %18 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %19 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %18)
  store %struct.mlx5_context* %19, %struct.mlx5_context** %16, align 8
  %20 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %21 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %20)
  %22 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  %24 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %25 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** %17, align 8
  %30 = load i32, i32* @MLX5_DBG_CQ, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

33:                                               ; preds = %4
  %34 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %35 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CREATE_CQ_SUPPORTED_COMP_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* @MLX5_DBG_CQ, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %42, i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

46:                                               ; preds = %33
  %47 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %48 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IBV_CQ_INIT_ATTR_MASK_FLAGS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %55 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CREATE_CQ_SUPPORTED_FLAGS, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* @MLX5_DBG_CQ, align 4
  %64 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %62, i32 %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

66:                                               ; preds = %53, %46
  %67 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %68 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CREATE_CQ_SUPPORTED_WC_FLAGS, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* @MLX5_DBG_CQ, align 4
  %77 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %75, i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENOTSUP, align 4
  store i32 %78, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

79:                                               ; preds = %66
  %80 = call %struct.mlx5_cq* @calloc(i32 1, i32 88)
  store %struct.mlx5_cq* %80, %struct.mlx5_cq** %12, align 8
  %81 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %82 = icmp ne %struct.mlx5_cq* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* @MLX5_DBG_CQ, align 4
  %86 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %84, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

87:                                               ; preds = %79
  %88 = call i32 @memset(%struct.mlx5_create_cq* %10, i32 0, i32 32)
  %89 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %90 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %89, i32 0, i32 13
  store i64 0, i64* %90, align 8
  %91 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %92 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %91, i32 0, i32 2
  %93 = call i64 @mlx5_spinlock_init(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %338

96:                                               ; preds = %87
  %97 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %98 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @align_queue_size(i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %102, 16777216
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %107 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %104, %96
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* @MLX5_DBG_CQ, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %112, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* @errno, align 4
  br label %334

117:                                              ; preds = %104
  %118 = call i32 (...) @get_cqe_size()
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* @MLX5_DBG_CQ, align 4
  %124 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %122, i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* @errno, align 4
  br label %334

127:                                              ; preds = %117
  %128 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %129 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %128)
  %130 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %131 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %132 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %131, i32 0, i32 3
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i64 @mlx5_alloc_cq_buf(%struct.mlx5_context* %129, %struct.mlx5_cq* %130, %struct.TYPE_5__* %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* @MLX5_DBG_CQ, align 4
  %140 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %138, i32 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %334

141:                                              ; preds = %127
  %142 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %143 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %142)
  %144 = call i64* @mlx5_alloc_dbrec(%struct.mlx5_context* %143)
  %145 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %146 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %145, i32 0, i32 4
  store i64* %144, i64** %146, align 8
  %147 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %148 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %147, i32 0, i32 4
  %149 = load i64*, i64** %148, align 8
  %150 = icmp ne i64* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %141
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* @MLX5_DBG_CQ, align 4
  %154 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %152, i32 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %328

155:                                              ; preds = %141
  %156 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %157 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %156, i32 0, i32 4
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* @MLX5_CQ_SET_CI, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 0, i64* %160, align 8
  %161 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %162 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %161, i32 0, i32 4
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @MLX5_CQ_ARM_DB, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64 0, i64* %165, align 8
  %166 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %167 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %166, i32 0, i32 12
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %170 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %173 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %175 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IBV_CQ_INIT_ATTR_MASK_FLAGS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %155
  %181 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %182 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IBV_CREATE_CQ_ATTR_SINGLE_THREADED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load i32, i32* @MLX5_CQ_FLAGS_SINGLE_THREADED, align 4
  %189 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %190 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %180, %155
  %194 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %195 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 0
  store i64 %197, i64* %198, align 8
  %199 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %200 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %199, i32 0, i32 4
  %201 = load i64*, i64** %200, align 8
  %202 = ptrtoint i64* %201 to i64
  %203 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = load i32, i32* %13, align 4
  %205 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 2
  store i32 %204, i32* %205, align 8
  %206 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %9, align 8
  %207 = icmp ne %struct.mlx5dv_cq_init_attr* %206, null
  br i1 %207, label %208, label %258

208:                                              ; preds = %193
  %209 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %9, align 8
  %210 = getelementptr inbounds %struct.mlx5dv_cq_init_attr, %struct.mlx5dv_cq_init_attr* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MLX5DV_CQ_INIT_ATTR_MASK_RESERVED, align 4
  %213 = sub nsw i32 %212, 1
  %214 = xor i32 %213, -1
  %215 = and i32 %211, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %208
  %218 = load i32*, i32** %17, align 8
  %219 = load i32, i32* @MLX5_DBG_CQ, align 4
  %220 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %218, i32 %219, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %221 = load i32, i32* @EINVAL, align 4
  store i32 %221, i32* @errno, align 4
  br label %321

222:                                              ; preds = %208
  %223 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %9, align 8
  %224 = getelementptr inbounds %struct.mlx5dv_cq_init_attr, %struct.mlx5dv_cq_init_attr* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @MLX5DV_CQ_INIT_ATTR_MASK_COMPRESSED_CQE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %257

229:                                              ; preds = %222
  %230 = load %struct.mlx5_context*, %struct.mlx5_context** %16, align 8
  %231 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %229
  %236 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %9, align 8
  %237 = getelementptr inbounds %struct.mlx5dv_cq_init_attr, %struct.mlx5dv_cq_init_attr* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.mlx5_context*, %struct.mlx5_context** %16, align 8
  %240 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %238, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %235
  %246 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 3
  store i32 1, i32* %246, align 4
  %247 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %9, align 8
  %248 = getelementptr inbounds %struct.mlx5dv_cq_init_attr, %struct.mlx5dv_cq_init_attr* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 4
  store i32 %249, i32* %250, align 8
  br label %256

251:                                              ; preds = %235, %229
  %252 = load i32*, i32** %17, align 8
  %253 = load i32, i32* @MLX5_DBG_CQ, align 4
  %254 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %252, i32 %253, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %255 = load i32, i32* @EINVAL, align 4
  store i32 %255, i32* @errno, align 4
  br label %321

256:                                              ; preds = %245
  br label %257

257:                                              ; preds = %256, %222
  br label %258

258:                                              ; preds = %257, %193
  %259 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sub nsw i32 %260, 1
  %262 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %263 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %266 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %269 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %268, i32 0, i32 5
  %270 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %269)
  %271 = getelementptr inbounds %struct.mlx5_create_cq, %struct.mlx5_create_cq* %10, i32 0, i32 5
  %272 = getelementptr inbounds %struct.mlx5_create_cq_resp, %struct.mlx5_create_cq_resp* %11, i32 0, i32 1
  %273 = call i32 @ibv_cmd_create_cq(%struct.ibv_context* %259, i32 %261, i32 %264, i32 %267, i32 %270, i32* %271, i32 32, i32* %272, i32 8)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %258
  %277 = load i32*, i32** %17, align 8
  %278 = load i32, i32* @MLX5_DBG_CQ, align 4
  %279 = load i32, i32* %14, align 4
  %280 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %277, i32 %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %279)
  br label %321

281:                                              ; preds = %258
  %282 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %283 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %282, i32 0, i32 3
  %284 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %285 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %284, i32 0, i32 11
  store %struct.TYPE_5__* %283, %struct.TYPE_5__** %285, align 8
  %286 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %287 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %286, i32 0, i32 10
  store i32* null, i32** %287, align 8
  %288 = getelementptr inbounds %struct.mlx5_create_cq_resp, %struct.mlx5_create_cq_resp* %11, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %291 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %290, i32 0, i32 9
  store i32 %289, i32* %291, align 8
  %292 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %293 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %292)
  %294 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %297 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %296, i32 0, i32 8
  store i32 %295, i32* %297, align 4
  %298 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %299 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %298)
  %300 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %303 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %302, i32 0, i32 7
  store i32 %301, i32* %303, align 8
  %304 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %305 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %304)
  %306 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %309 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %308, i32 0, i32 6
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @MLX5_CQ_FLAGS_EXTENDED, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %281
  %315 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %316 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %7, align 8
  %317 = call i32 @mlx5_cq_fill_pfns(%struct.mlx5_cq* %315, %struct.ibv_cq_init_attr_ex* %316)
  br label %318

318:                                              ; preds = %314, %281
  %319 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %320 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %319, i32 0, i32 5
  store %struct.ibv_cq_ex* %320, %struct.ibv_cq_ex** %5, align 8
  br label %341

321:                                              ; preds = %276, %251, %217
  %322 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %323 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %322)
  %324 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %325 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %324, i32 0, i32 4
  %326 = load i64*, i64** %325, align 8
  %327 = call i32 @mlx5_free_db(%struct.mlx5_context* %323, i64* %326)
  br label %328

328:                                              ; preds = %321, %151
  %329 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %330 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %329)
  %331 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %332 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %331, i32 0, i32 3
  %333 = call i32 @mlx5_free_cq_buf(%struct.mlx5_context* %330, %struct.TYPE_5__* %332)
  br label %334

334:                                              ; preds = %328, %137, %121, %111
  %335 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %336 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %335, i32 0, i32 2
  %337 = call i32 @mlx5_spinlock_destroy(i32* %336)
  br label %338

338:                                              ; preds = %334, %95
  %339 = load %struct.mlx5_cq*, %struct.mlx5_cq** %12, align 8
  %340 = call i32 @free(%struct.mlx5_cq* %339)
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %5, align 8
  br label %341

341:                                              ; preds = %338, %318, %83, %74, %61, %41, %28
  %342 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %5, align 8
  ret %struct.ibv_cq_ex* %342
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*, ...) #1

declare dso_local %struct.mlx5_cq* @calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mlx5_create_cq*, i32, i32) #1

declare dso_local i64 @mlx5_spinlock_init(i32*) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i32 @get_cqe_size(...) #1

declare dso_local i64 @mlx5_alloc_cq_buf(%struct.mlx5_context*, %struct.mlx5_cq*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i64* @mlx5_alloc_dbrec(%struct.mlx5_context*) #1

declare dso_local i32 @ibv_cmd_create_cq(%struct.ibv_context*, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @mlx5_cq_fill_pfns(%struct.mlx5_cq*, %struct.ibv_cq_init_attr_ex*) #1

declare dso_local i32 @mlx5_free_db(%struct.mlx5_context*, i64*) #1

declare dso_local i32 @mlx5_free_cq_buf(%struct.mlx5_context*, %struct.TYPE_5__*) #1

declare dso_local i32 @mlx5_spinlock_destroy(i32*) #1

declare dso_local i32 @free(%struct.mlx5_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
