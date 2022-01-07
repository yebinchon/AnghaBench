; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i8* }
%struct.ibv_context = type { i32 }
%struct.ibv_qp_init_attr_ex = type { i32, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.mlx5_create_qp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.mlx5_create_qp_resp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.mlx5_create_qp_resp_ex = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.mlx5_qp = type { i32, i32, i32, i32, i64*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_12__, i64, i32, %struct.TYPE_10__, %struct.TYPE_11__, i64, %struct.ibv_qp* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.mlx5_context = type { i64, i32, i64, i32* }

@MLX5_CREATE_QP_SUP_COMP_MASK = common dso_local global i32 0, align 4
@IBV_QP_INIT_ATTR_MAX_TSO_HEADER = common dso_local global i32 0, align 4
@IBV_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@MLX5_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IBV_QP_INIT_ATTR_RX_HASH = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_SIGNATURE = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_SCATTER_CQE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MLX5_RCV_DBR = common dso_local global i64 0, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@IBV_ATOMIC_HCA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't find free user index\0A\00", align 1
@MLX5_CREATE_QP_EX2_COMP_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ret %d\0A\00", align 1
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i64 0, align 8
@MLX5_RSC_TYPE_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_qp* (%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*)* @create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_qp* @create_qp(%struct.ibv_context* %0, %struct.ibv_qp_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %6 = alloca %struct.mlx5_create_qp, align 8
  %7 = alloca %struct.mlx5_create_qp_resp, align 8
  %8 = alloca %struct.mlx5_create_qp_resp_ex, align 8
  %9 = alloca %struct.mlx5_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_context*, align 8
  %12 = alloca %struct.ibv_qp*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %5, align 8
  %16 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %17 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %16)
  store %struct.mlx5_context* %17, %struct.mlx5_context** %11, align 8
  store i8* null, i8** %13, align 8
  %18 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %19 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %15, align 8
  %21 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %22 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MLX5_CREATE_QP_SUP_COMP_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %521

29:                                               ; preds = %2
  %30 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %31 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IBV_QP_INIT_ATTR_MAX_TSO_HEADER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %38 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IBV_QPT_RAW_PACKET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %521

43:                                               ; preds = %36, %29
  %44 = call %struct.mlx5_qp* @calloc(i32 1, i32 136)
  store %struct.mlx5_qp* %44, %struct.mlx5_qp** %9, align 8
  %45 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %46 = icmp ne %struct.mlx5_qp* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @MLX5_DBG_QP, align 4
  %50 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %48, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %521

51:                                               ; preds = %43
  %52 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %52, i32 0, i32 9
  %54 = bitcast i32* %53 to %struct.ibv_qp*
  store %struct.ibv_qp* %54, %struct.ibv_qp** %12, align 8
  %55 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  %56 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %56, i32 0, i32 13
  store %struct.ibv_qp* %55, %struct.ibv_qp** %57, align 8
  %58 = bitcast %struct.mlx5_create_qp* %6 to %struct.mlx5_create_qp_resp_ex*
  %59 = call i32 @memset(%struct.mlx5_create_qp_resp_ex* %58, i32 0, i32 64)
  %60 = bitcast %struct.mlx5_create_qp_resp* %7 to %struct.mlx5_create_qp_resp_ex*
  %61 = call i32 @memset(%struct.mlx5_create_qp_resp_ex* %60, i32 0, i32 64)
  %62 = call i32 @memset(%struct.mlx5_create_qp_resp_ex* %8, i32 0, i32 64)
  %63 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %64 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IBV_QP_INIT_ATTR_RX_HASH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %51
  %70 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %71 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %72 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %73 = call i32 @mlx5_cmd_create_rss_qp(%struct.ibv_context* %70, %struct.ibv_qp_init_attr_ex* %71, %struct.mlx5_qp* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %518

77:                                               ; preds = %69
  %78 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  store %struct.ibv_qp* %78, %struct.ibv_qp** %3, align 8
  br label %521

79:                                               ; preds = %51
  %80 = call i64 (...) @qp_sig_enabled()
  %81 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %82 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %81, i32 0, i32 12
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %84 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* @MLX5_QP_FLAG_SIGNATURE, align 4
  %89 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %79
  %93 = call i64 (...) @use_scatter_to_cqe()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* @MLX5_QP_FLAG_SCATTER_CQE, align 4
  %97 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %92
  %101 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %102 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %103 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %104 = call i32 @mlx5_calc_wq_size(%struct.mlx5_context* %101, %struct.ibv_qp_init_attr_ex* %102, %struct.mlx5_qp* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* @errno, align 4
  br label %518

110:                                              ; preds = %100
  %111 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %112 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IBV_QPT_RAW_PACKET, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %110
  %117 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %122 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %125 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  %128 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %129 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %131 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  br label %139

133:                                              ; preds = %110
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %136 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %116
  %140 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %141 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %142 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @mlx5_alloc_qp_buf(%struct.ibv_context* %140, %struct.ibv_qp_init_attr_ex* %141, %struct.mlx5_qp* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* @MLX5_DBG_QP, align 4
  %149 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %147, i32 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %518

150:                                              ; preds = %139
  %151 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %152 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IBV_QPT_RAW_PACKET, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %180

156:                                              ; preds = %150
  %157 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %158 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %162 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %164 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %168 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %172 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %170, %174
  %176 = add nsw i32 %166, %175
  %177 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %178 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  br label %214

180:                                              ; preds = %150
  %181 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %182 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %181, i32 0, i32 11
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %186 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %184, %188
  %190 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %191 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %193 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %192, i32 0, i32 11
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %197 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %195, %199
  %201 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %202 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %206 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %204, %208
  %210 = add nsw i32 %200, %209
  %211 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %212 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %180, %156
  %215 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %216 = call i32 @mlx5_init_qp_indices(%struct.mlx5_qp* %215)
  %217 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %218 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %217, i32 0, i32 7
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 5
  %220 = call i64 @mlx5_spinlock_init(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %214
  %223 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %224 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 4
  %226 = call i64 @mlx5_spinlock_init(i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222, %214
  br label %515

229:                                              ; preds = %222
  %230 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %231 = call i64* @mlx5_alloc_dbrec(%struct.mlx5_context* %230)
  %232 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %233 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %232, i32 0, i32 4
  store i64* %231, i64** %233, align 8
  %234 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %235 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %234, i32 0, i32 4
  %236 = load i64*, i64** %235, align 8
  %237 = icmp ne i64* %236, null
  br i1 %237, label %242, label %238

238:                                              ; preds = %229
  %239 = load i32*, i32** %15, align 8
  %240 = load i32, i32* @MLX5_DBG_QP, align 4
  %241 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %239, i32 %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %515

242:                                              ; preds = %229
  %243 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %244 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %243, i32 0, i32 4
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* @MLX5_RCV_DBR, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  store i64 0, i64* %247, align 8
  %248 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %249 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %248, i32 0, i32 4
  %250 = load i64*, i64** %249, align 8
  %251 = load i64, i64* @MLX5_SND_DBR, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64 0, i64* %252, align 8
  %253 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %254 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %253, i32 0, i32 11
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 0
  store i64 %257, i64* %258, align 8
  %259 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %260 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @IBV_QPT_RAW_PACKET, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %242
  %265 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %266 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %265, i32 0, i32 10
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  br label %271

270:                                              ; preds = %242
  br label %271

271:                                              ; preds = %270, %264
  %272 = phi i64 [ %269, %264 ], [ 0, %270 ]
  %273 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 1
  store i64 %272, i64* %273, align 8
  %274 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %275 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %274, i32 0, i32 4
  %276 = load i64*, i64** %275, align 8
  %277 = ptrtoint i64* %276 to i64
  %278 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 2
  store i64 %277, i64* %278, align 8
  %279 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %280 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 3
  store i32 %282, i32* %283, align 8
  %284 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %285 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %284, i32 0, i32 6
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 9
  store i64 %287, i64* %288, align 8
  %289 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %290 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 8
  store i32 %292, i32* %293, align 4
  %294 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %295 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @IBV_ATOMIC_HCA, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %271
  %300 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %301 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %300, i32 0, i32 3
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %271
  %303 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %304 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 4
  store i32 16777215, i32* %308, align 4
  %309 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %310 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %309, i32 0, i32 1
  %311 = call i32 @pthread_mutex_lock(i32* %310)
  br label %333

312:                                              ; preds = %302
  %313 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %314 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @is_xrc_tgt(i64 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %332, label %318

318:                                              ; preds = %312
  %319 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %320 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %321 = call i8* @mlx5_store_uidx(%struct.mlx5_context* %319, %struct.mlx5_qp* %320)
  store i8* %321, i8** %13, align 8
  %322 = load i8*, i8** %13, align 8
  %323 = icmp ult i8* %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %318
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* @MLX5_DBG_QP, align 4
  %327 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %325, i32 %326, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %508

328:                                              ; preds = %318
  %329 = load i8*, i8** %13, align 8
  %330 = ptrtoint i8* %329 to i32
  %331 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 4
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %328, %312
  br label %333

333:                                              ; preds = %332, %307
  %334 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %335 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @MLX5_CREATE_QP_EX2_COMP_MASK, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %333
  %341 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %342 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %343 = bitcast %struct.mlx5_create_qp* %6 to %struct.mlx5_create_qp_resp_ex*
  %344 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %345 = call i32 @mlx5_cmd_create_qp_ex(%struct.ibv_context* %341, %struct.ibv_qp_init_attr_ex* %342, %struct.mlx5_create_qp_resp_ex* %343, %struct.mlx5_qp* %344, %struct.mlx5_create_qp_resp_ex* %8)
  store i32 %345, i32* %10, align 4
  br label %354

346:                                              ; preds = %333
  %347 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %348 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %349 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %348, i32 0, i32 9
  %350 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %351 = getelementptr inbounds %struct.mlx5_create_qp, %struct.mlx5_create_qp* %6, i32 0, i32 7
  %352 = getelementptr inbounds %struct.mlx5_create_qp_resp, %struct.mlx5_create_qp_resp* %7, i32 0, i32 6
  %353 = call i32 @ibv_cmd_create_qp_ex(%struct.ibv_context* %347, i32* %349, i32 4, %struct.ibv_qp_init_attr_ex* %350, i32* %351, i32 64, i32* %352, i32 64)
  store i32 %353, i32* %10, align 4
  br label %354

354:                                              ; preds = %346, %340
  %355 = load i32, i32* %10, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = load i32*, i32** %15, align 8
  %359 = load i32, i32* @MLX5_DBG_QP, align 4
  %360 = load i32, i32* %10, align 4
  %361 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %358, i32 %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %360)
  br label %486

362:                                              ; preds = %354
  %363 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %364 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @MLX5_CREATE_QP_EX2_COMP_MASK, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %362
  %370 = getelementptr inbounds %struct.mlx5_create_qp_resp_ex, %struct.mlx5_create_qp_resp_ex* %8, i32 0, i32 5
  %371 = load i32, i32* %370, align 8
  br label %375

372:                                              ; preds = %362
  %373 = getelementptr inbounds %struct.mlx5_create_qp_resp, %struct.mlx5_create_qp_resp* %7, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  br label %375

375:                                              ; preds = %372, %369
  %376 = phi i32 [ %371, %369 ], [ %374, %372 ]
  store i32 %376, i32* %14, align 4
  %377 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %378 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %412, label %381

381:                                              ; preds = %375
  %382 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %383 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %393, label %387

387:                                              ; preds = %381
  %388 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %389 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %408

393:                                              ; preds = %387, %381
  %394 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %395 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  %396 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %399 = call i32 @mlx5_store_qp(%struct.mlx5_context* %394, i8* %397, %struct.mlx5_qp* %398)
  store i32 %399, i32* %10, align 4
  %400 = load i32, i32* %10, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %393
  %403 = load i32*, i32** %15, align 8
  %404 = load i32, i32* @MLX5_DBG_QP, align 4
  %405 = load i32, i32* %10, align 4
  %406 = call i32 (i32*, i32, i8*, ...) @mlx5_dbg(i32* %403, i32 %404, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %405)
  br label %483

407:                                              ; preds = %393
  br label %408

408:                                              ; preds = %407, %387
  %409 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %410 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %409, i32 0, i32 1
  %411 = call i32 @pthread_mutex_unlock(i32* %410)
  br label %412

412:                                              ; preds = %408, %375
  %413 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %414 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %415 = load i32, i32* %14, align 4
  %416 = call i32 @map_uuar(%struct.ibv_context* %413, %struct.mlx5_qp* %414, i32 %415)
  %417 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %418 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %417, i32 0, i32 6
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %422 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %421, i32 0, i32 6
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 1
  store i64 %420, i64* %423, align 8
  %424 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %425 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %412
  %429 = load i64, i64* @MLX5_WQE_CTRL_CQ_UPDATE, align 8
  %430 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %431 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %430, i32 0, i32 8
  store i64 %429, i64* %431, align 8
  br label %435

432:                                              ; preds = %412
  %433 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %434 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %433, i32 0, i32 8
  store i64 0, i64* %434, align 8
  br label %435

435:                                              ; preds = %432, %428
  %436 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %437 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %436, i32 0, i32 7
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %441 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 2
  store i32 %439, i32* %442, align 8
  %443 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %444 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %443, i32 0, i32 6
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %448 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 1
  store i64 %446, i64* %449, align 8
  %450 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %451 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %450, i32 0, i32 6
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %455 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 0
  store i32 %453, i32* %456, align 8
  %457 = load i32, i32* @MLX5_RSC_TYPE_QP, align 4
  %458 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %459 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 1
  store i32 %457, i32* %460, align 8
  %461 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %462 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %461, i32 0, i32 2
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %435
  %466 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %467 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @is_xrc_tgt(i64 %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %473, label %471

471:                                              ; preds = %465
  %472 = load i8*, i8** %13, align 8
  br label %477

473:                                              ; preds = %465, %435
  %474 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  %475 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %474, i32 0, i32 0
  %476 = load i8*, i8** %475, align 8
  br label %477

477:                                              ; preds = %473, %471
  %478 = phi i8* [ %472, %471 ], [ %476, %473 ]
  %479 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %480 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %479, i32 0, i32 5
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 0
  store i8* %478, i8** %481, align 8
  %482 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  store %struct.ibv_qp* %482, %struct.ibv_qp** %3, align 8
  br label %521

483:                                              ; preds = %402
  %484 = load %struct.ibv_qp*, %struct.ibv_qp** %12, align 8
  %485 = call i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %484)
  br label %486

486:                                              ; preds = %483, %357
  %487 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %488 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %496, label %491

491:                                              ; preds = %486
  %492 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %493 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %492)
  %494 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %493, i32 0, i32 1
  %495 = call i32 @pthread_mutex_unlock(i32* %494)
  br label %507

496:                                              ; preds = %486
  %497 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %498 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @is_xrc_tgt(i64 %499)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %496
  %503 = load %struct.mlx5_context*, %struct.mlx5_context** %11, align 8
  %504 = load i8*, i8** %13, align 8
  %505 = call i32 @mlx5_clear_uidx(%struct.mlx5_context* %503, i8* %504)
  br label %506

506:                                              ; preds = %502, %496
  br label %507

507:                                              ; preds = %506, %491
  br label %508

508:                                              ; preds = %507, %324
  %509 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %510 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %509)
  %511 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %512 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %511, i32 0, i32 4
  %513 = load i64*, i64** %512, align 8
  %514 = call i32 @mlx5_free_db(%struct.mlx5_context* %510, i64* %513)
  br label %515

515:                                              ; preds = %508, %238, %228
  %516 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %517 = call i32 @mlx5_free_qp_buf(%struct.mlx5_qp* %516)
  br label %518

518:                                              ; preds = %515, %146, %107, %76
  %519 = load %struct.mlx5_qp*, %struct.mlx5_qp** %9, align 8
  %520 = call i32 @free(%struct.mlx5_qp* %519)
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %521

521:                                              ; preds = %518, %477, %77, %47, %42, %28
  %522 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  ret %struct.ibv_qp* %522
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local %struct.mlx5_qp* @calloc(i32, i32) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.mlx5_create_qp_resp_ex*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_create_rss_qp(%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

declare dso_local i64 @qp_sig_enabled(...) #1

declare dso_local i64 @use_scatter_to_cqe(...) #1

declare dso_local i32 @mlx5_calc_wq_size(%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

declare dso_local i64 @mlx5_alloc_qp_buf(%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*, i32) #1

declare dso_local i32 @mlx5_init_qp_indices(%struct.mlx5_qp*) #1

declare dso_local i64 @mlx5_spinlock_init(i32*) #1

declare dso_local i64* @mlx5_alloc_dbrec(%struct.mlx5_context*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @is_xrc_tgt(i64) #1

declare dso_local i8* @mlx5_store_uidx(%struct.mlx5_context*, %struct.mlx5_qp*) #1

declare dso_local i32 @mlx5_cmd_create_qp_ex(%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_create_qp_resp_ex*, %struct.mlx5_qp*, %struct.mlx5_create_qp_resp_ex*) #1

declare dso_local i32 @ibv_cmd_create_qp_ex(%struct.ibv_context*, i32*, i32, %struct.ibv_qp_init_attr_ex*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mlx5_store_qp(%struct.mlx5_context*, i8*, %struct.mlx5_qp*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @map_uuar(%struct.ibv_context*, %struct.mlx5_qp*, i32) #1

declare dso_local i32 @ibv_cmd_destroy_qp(%struct.ibv_qp*) #1

declare dso_local i32 @mlx5_clear_uidx(%struct.mlx5_context*, i8*) #1

declare dso_local i32 @mlx5_free_db(%struct.mlx5_context*, i64*) #1

declare dso_local i32 @mlx5_free_qp_buf(%struct.mlx5_qp*) #1

declare dso_local i32 @free(%struct.mlx5_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
