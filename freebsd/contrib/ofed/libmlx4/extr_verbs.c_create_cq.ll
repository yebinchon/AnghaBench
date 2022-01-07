; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32, i32, i32 }
%struct.mlx4_cq = type { i32, i32, i32, i64*, %struct.ibv_cq_ex, i64*, i32, i32, i64 }
%struct.mlx4_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CREATE_CQ_SUPPORTED_COMP_MASK = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@IBV_CQ_INIT_ATTR_MASK_FLAGS = common dso_local global i32 0, align 4
@CREATE_CQ_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@CREATE_CQ_SUPPORTED_WC_FLAGS = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SLID = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SL = common dso_local global i32 0, align 4
@IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@MLX4_DB_TYPE_CQ = common dso_local global i32 0, align 4
@IBV_CREATE_CQ_ATTR_SINGLE_THREADED = common dso_local global i32 0, align 4
@MLX4_CQ_FLAGS_SINGLE_THREADED = common dso_local global i32 0, align 4
@MLX4_CQ_FLAGS_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32)* @create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1, i32 %2) #0 {
  %4 = alloca %struct.ibv_cq_ex*, align 8
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_context*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %12 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %11)
  store %struct.mlx4_context* %12, %struct.mlx4_context** %10, align 8
  %13 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %14 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 4194303
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

19:                                               ; preds = %3
  %20 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %21 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CREATE_CQ_SUPPORTED_COMP_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOTSUP, align 4
  store i32 %28, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

29:                                               ; preds = %19
  %30 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %31 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IBV_CQ_INIT_ATTR_MASK_FLAGS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %38 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CREATE_CQ_SUPPORTED_FLAGS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOTSUP, align 4
  store i32 %45, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

46:                                               ; preds = %36, %29
  %47 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %48 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CREATE_CQ_SUPPORTED_WC_FLAGS, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

55:                                               ; preds = %46
  %56 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %57 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IBV_WC_EX_WITH_SLID, align 4
  %60 = load i32, i32* @IBV_WC_EX_WITH_SL, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %66 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IBV_WC_EX_WITH_COMPLETION_TIMESTAMP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOTSUP, align 4
  store i32 %72, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

73:                                               ; preds = %64, %55
  %74 = call %struct.mlx4_cq* @malloc(i32 56)
  store %struct.mlx4_cq* %74, %struct.mlx4_cq** %8, align 8
  %75 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %76 = icmp ne %struct.mlx4_cq* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

78:                                               ; preds = %73
  %79 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %82 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %81, i32 0, i32 7
  %83 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %84 = call i64 @pthread_spin_init(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %211

87:                                               ; preds = %78
  %88 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %89 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @align_queue_size(i32 %91)
  %93 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %94 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %96 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @to_mdev(i32 %97)
  %99 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %100 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %99, i32 0, i32 2
  %101 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %102 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %105 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @mlx4_alloc_cq_buf(i32 %98, i32* %100, i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  br label %211

110:                                              ; preds = %87
  %111 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %112 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %115 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %117 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %116)
  %118 = load i32, i32* @MLX4_DB_TYPE_CQ, align 4
  %119 = call i64* @mlx4_alloc_db(%struct.mlx4_context* %117, i32 %118)
  %120 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %121 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %120, i32 0, i32 3
  store i64* %119, i64** %121, align 8
  %122 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %123 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %110
  br label %207

127:                                              ; preds = %110
  %128 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %129 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %133 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %132, i32 0, i32 5
  store i64* %131, i64** %133, align 8
  %134 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %135 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %134, i32 0, i32 5
  %136 = load i64*, i64** %135, align 8
  store i64 0, i64* %136, align 8
  %137 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %138 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %140 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %139, i32 0, i32 3
  %141 = load i64*, i64** %140, align 8
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %144 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %146 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IBV_CQ_INIT_ATTR_MASK_FLAGS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %127
  %152 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %153 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IBV_CREATE_CQ_ATTR_SINGLE_THREADED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i32, i32* @MLX4_CQ_FLAGS_SINGLE_THREADED, align 4
  %160 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %161 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %151, %127
  %165 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %166 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @MLX4_CQ_FLAGS_EXTENDED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %175 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %176 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %177 = call i32 @mlx4_cmd_create_cq_ex(%struct.ibv_context* %174, %struct.ibv_cq_init_attr_ex* %175, %struct.mlx4_cq* %176)
  store i32 %177, i32* %9, align 4
  br label %183

178:                                              ; preds = %164
  %179 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %180 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %181 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %182 = call i32 @mlx4_cmd_create_cq(%struct.ibv_context* %179, %struct.ibv_cq_init_attr_ex* %180, %struct.mlx4_cq* %181)
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %199

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @MLX4_CQ_FLAGS_EXTENDED, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %194 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %195 = call i32 @mlx4_cq_fill_pfns(%struct.mlx4_cq* %193, %struct.ibv_cq_init_attr_ex* %194)
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %198 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %197, i32 0, i32 4
  store %struct.ibv_cq_ex* %198, %struct.ibv_cq_ex** %4, align 8
  br label %214

199:                                              ; preds = %186
  %200 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %201 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %200)
  %202 = load i32, i32* @MLX4_DB_TYPE_CQ, align 4
  %203 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %204 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %203, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = call i32 @mlx4_free_db(%struct.mlx4_context* %201, i32 %202, i64* %205)
  br label %207

207:                                              ; preds = %199, %126
  %208 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %208, i32 0, i32 2
  %210 = call i32 @mlx4_free_buf(i32* %209)
  br label %211

211:                                              ; preds = %207, %109, %86
  %212 = load %struct.mlx4_cq*, %struct.mlx4_cq** %8, align 8
  %213 = call i32 @free(%struct.mlx4_cq* %212)
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %214

214:                                              ; preds = %211, %196, %77, %71, %54, %44, %27, %17
  %215 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %4, align 8
  ret %struct.ibv_cq_ex* %215
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local %struct.mlx4_cq* @malloc(i32) #1

declare dso_local i64 @pthread_spin_init(i32*, i32) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i64 @mlx4_alloc_cq_buf(i32, i32*, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i64* @mlx4_alloc_db(%struct.mlx4_context*, i32) #1

declare dso_local i32 @mlx4_cmd_create_cq_ex(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, %struct.mlx4_cq*) #1

declare dso_local i32 @mlx4_cmd_create_cq(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, %struct.mlx4_cq*) #1

declare dso_local i32 @mlx4_cq_fill_pfns(%struct.mlx4_cq*, %struct.ibv_cq_init_attr_ex*) #1

declare dso_local i32 @mlx4_free_db(%struct.mlx4_context*, i32, i64*) #1

declare dso_local i32 @mlx4_free_buf(i32*) #1

declare dso_local i32 @free(%struct.mlx4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
