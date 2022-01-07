; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_wq_init_attr = type { i64 }
%struct.mlx5_create_wq = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32 }
%struct.mlx5_create_wq_resp = type { %struct.TYPE_8__, i32, i32 }
%struct.mlx5_rwq = type { i32, i64*, %struct.ibv_wq, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64*, i64, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_context = type { i32* }

@IBV_WQT_RQ = common dso_local global i64 0, align 8
@MLX5_RWQ_FLAG_SIGNATURE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MLX5_RCV_DBR = common dso_local global i64 0, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@MLX5_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't find free user index\0A\00", align 1
@MLX5_RSC_TYPE_RWQ = common dso_local global i32 0, align 4
@mlx5_post_wq_recv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_wq* @mlx5_create_wq(%struct.ibv_context* %0, %struct.ibv_wq_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_wq*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_wq_init_attr*, align 8
  %6 = alloca %struct.mlx5_create_wq, align 8
  %7 = alloca %struct.mlx5_create_wq_resp, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_rwq*, align 8
  %10 = alloca %struct.mlx5_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_wq_init_attr* %1, %struct.ibv_wq_init_attr** %5, align 8
  %14 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %15 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %14)
  store %struct.mlx5_context* %15, %struct.mlx5_context** %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %17 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.ibv_wq_init_attr*, %struct.ibv_wq_init_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ibv_wq_init_attr, %struct.ibv_wq_init_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IBV_WQT_RQ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.ibv_wq* null, %struct.ibv_wq** %3, align 8
  br label %198

25:                                               ; preds = %2
  %26 = bitcast %struct.mlx5_create_wq* %6 to %struct.mlx5_create_wq_resp*
  %27 = call i32 @memset(%struct.mlx5_create_wq_resp* %26, i32 0, i32 48)
  %28 = call i32 @memset(%struct.mlx5_create_wq_resp* %7, i32 0, i32 48)
  %29 = call %struct.mlx5_rwq* @calloc(i32 1, i32 96)
  store %struct.mlx5_rwq* %29, %struct.mlx5_rwq** %9, align 8
  %30 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %31 = icmp ne %struct.mlx5_rwq* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store %struct.ibv_wq* null, %struct.ibv_wq** %3, align 8
  br label %198

33:                                               ; preds = %25
  %34 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %35 = call i64 @rwq_sig_enabled(%struct.ibv_context* %34)
  %36 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @MLX5_RWQ_FLAG_SIGNATURE, align 4
  %44 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %48 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %49 = load %struct.ibv_wq_init_attr*, %struct.ibv_wq_init_attr** %5, align 8
  %50 = call i32 @mlx5_calc_rwq_size(%struct.mlx5_context* %47, %struct.mlx5_rwq* %48, %struct.ibv_wq_init_attr* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* @errno, align 4
  br label %195

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %61 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @mlx5_alloc_rwq_buf(%struct.ibv_context* %60, %struct.mlx5_rwq* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %195

66:                                               ; preds = %56
  %67 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %68 = call i32 @mlx5_init_rwq_indices(%struct.mlx5_rwq* %67)
  %69 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %70 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = call i64 @mlx5_spinlock_init(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %191

75:                                               ; preds = %66
  %76 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %77 = call i64* @mlx5_alloc_dbrec(%struct.mlx5_context* %76)
  %78 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %79 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %78, i32 0, i32 1
  store i64* %77, i64** %79, align 8
  %80 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %81 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %191

85:                                               ; preds = %75
  %86 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %87 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @MLX5_RCV_DBR, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %92 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @MLX5_SND_DBR, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 0, i64* %95, align 8
  %96 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %97 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %101 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %99, %103
  %105 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %106 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  %107 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @MLX5_RCV_DBR, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %113 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %112, i32 0, i32 6
  store i64* %111, i64** %113, align 8
  %114 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %115 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %121 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = ptrtoint i64* %122 to i64
  %124 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %127 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %133 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %139 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %140 = call i64 @mlx5_store_uidx(%struct.mlx5_context* %138, %struct.mlx5_rwq* %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %85
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* @MLX5_DBG_QP, align 4
  %146 = call i32 @mlx5_dbg(i32* %144, i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %184

147:                                              ; preds = %85
  %148 = load i64, i64* %12, align 8
  %149 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %152 = load %struct.ibv_wq_init_attr*, %struct.ibv_wq_init_attr** %5, align 8
  %153 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %154 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 2
  %156 = getelementptr inbounds %struct.mlx5_create_wq_resp, %struct.mlx5_create_wq_resp* %7, i32 0, i32 1
  %157 = call i32 @ibv_cmd_create_wq(%struct.ibv_context* %151, %struct.ibv_wq_init_attr* %152, %struct.ibv_wq* %154, i32* %155, i32 4, i32 48, i32* %156, i32 4, i32 48)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %147
  br label %178

161:                                              ; preds = %147
  %162 = load i32, i32* @MLX5_RSC_TYPE_RWQ, align 4
  %163 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %164 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %170 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load i32, i32* @mlx5_post_wq_recv, align 4
  %173 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %174 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %177 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %176, i32 0, i32 2
  store %struct.ibv_wq* %177, %struct.ibv_wq** %3, align 8
  br label %198

178:                                              ; preds = %160
  %179 = load %struct.mlx5_context*, %struct.mlx5_context** %10, align 8
  %180 = getelementptr inbounds %struct.mlx5_create_wq, %struct.mlx5_create_wq* %6, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @mlx5_clear_uidx(%struct.mlx5_context* %179, i64 %182)
  br label %184

184:                                              ; preds = %178, %143
  %185 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %186 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %185)
  %187 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %188 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = call i32 @mlx5_free_db(%struct.mlx5_context* %186, i64* %189)
  br label %191

191:                                              ; preds = %184, %84, %74
  %192 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %193 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %194 = call i32 @mlx5_free_rwq_buf(%struct.mlx5_rwq* %192, %struct.ibv_context* %193)
  br label %195

195:                                              ; preds = %191, %65, %53
  %196 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %9, align 8
  %197 = call i32 @free(%struct.mlx5_rwq* %196)
  store %struct.ibv_wq* null, %struct.ibv_wq** %3, align 8
  br label %198

198:                                              ; preds = %195, %161, %32, %24
  %199 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  ret %struct.ibv_wq* %199
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @memset(%struct.mlx5_create_wq_resp*, i32, i32) #1

declare dso_local %struct.mlx5_rwq* @calloc(i32, i32) #1

declare dso_local i64 @rwq_sig_enabled(%struct.ibv_context*) #1

declare dso_local i32 @mlx5_calc_rwq_size(%struct.mlx5_context*, %struct.mlx5_rwq*, %struct.ibv_wq_init_attr*) #1

declare dso_local i64 @mlx5_alloc_rwq_buf(%struct.ibv_context*, %struct.mlx5_rwq*, i32) #1

declare dso_local i32 @mlx5_init_rwq_indices(%struct.mlx5_rwq*) #1

declare dso_local i64 @mlx5_spinlock_init(i32*) #1

declare dso_local i64* @mlx5_alloc_dbrec(%struct.mlx5_context*) #1

declare dso_local i64 @mlx5_store_uidx(%struct.mlx5_context*, %struct.mlx5_rwq*) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*) #1

declare dso_local i32 @ibv_cmd_create_wq(%struct.ibv_context*, %struct.ibv_wq_init_attr*, %struct.ibv_wq*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_clear_uidx(%struct.mlx5_context*, i64) #1

declare dso_local i32 @mlx5_free_db(%struct.mlx5_context*, i64*) #1

declare dso_local i32 @mlx5_free_rwq_buf(%struct.mlx5_rwq*, %struct.ibv_context*) #1

declare dso_local i32 @free(%struct.mlx5_rwq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
