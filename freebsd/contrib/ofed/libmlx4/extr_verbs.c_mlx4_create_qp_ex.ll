; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_qp_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_qp_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_qp_init_attr_ex = type { i32, %struct.TYPE_10__, i64, i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }
%struct.mlx4_context = type { i64, i64, i32 }
%struct.mlx4_create_qp = type { i64, i64, i32, i32, i32, i32, i64 }
%struct.ibv_create_qp_resp = type { i32 }
%struct.mlx4_qp = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i64*, %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.mlx4_qp*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.mlx4_qp*, i32 }
%struct.TYPE_12__ = type { %struct.ibv_qp }

@MLX4_CREATE_QP_SUP_COMP_MASK = common dso_local global i32 0, align 4
@IBV_QPT_XRC_RECV = common dso_local global i32 0, align 4
@IBV_QPT_XRC_SEND = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4
@MLX4_CREATE_QP_EX2_COMP_MASK = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_qp* @mlx4_create_qp_ex(%struct.ibv_context* %0, %struct.ibv_qp_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %6 = alloca %struct.mlx4_context*, align 8
  %7 = alloca %struct.mlx4_create_qp, align 8
  %8 = alloca %struct.ibv_create_qp_resp, align 4
  %9 = alloca %struct.mlx4_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %5, align 8
  %11 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %12 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %11)
  store %struct.mlx4_context* %12, %struct.mlx4_context** %6, align 8
  %13 = load %struct.mlx4_context*, %struct.mlx4_context** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  %18 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %19 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mlx4_context*, %struct.mlx4_context** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mlx4_context*, %struct.mlx4_context** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx4_context*, %struct.mlx4_context** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %46 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mlx4_context*, %struct.mlx4_context** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %35, %26, %17
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

54:                                               ; preds = %44
  br label %81

55:                                               ; preds = %2
  %56 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %57 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 65536
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %63 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 65536
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %69 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 64
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %75 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 64
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67, %61, %55
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %83 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1024
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

88:                                               ; preds = %81
  %89 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %90 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MLX4_CREATE_QP_SUP_COMP_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

97:                                               ; preds = %88
  %98 = call %struct.mlx4_qp* @calloc(i32 1, i32 112)
  store %struct.mlx4_qp* %98, %struct.mlx4_qp** %9, align 8
  %99 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %100 = icmp ne %struct.mlx4_qp* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

102:                                              ; preds = %97
  %103 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %104 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IBV_QPT_XRC_RECV, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %113 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %146

115:                                              ; preds = %102
  %116 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %117 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %116, i32 0, i32 1
  %118 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %119 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %122 = call i32 @mlx4_calc_sq_wqe_size(%struct.TYPE_10__* %117, i32 %120, %struct.mlx4_qp* %121)
  %123 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %124 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 2048, %126
  %128 = add nsw i32 %127, 1
  %129 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %132 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %134, %138
  %140 = trunc i64 %139 to i32
  %141 = call i8* @align_queue_size(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %144 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %115, %108
  %147 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %148 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %153 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IBV_QPT_XRC_SEND, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %159 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IBV_QPT_XRC_RECV, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %157, %151, %146
  %164 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %165 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  %167 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %168 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %171 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  br label %204

173:                                              ; preds = %157
  %174 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %175 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i8* @align_queue_size(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %182 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %185 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %187, 1
  br i1 %188, label %189, label %193

189:                                              ; preds = %173
  %190 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %191 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  store i64 1, i64* %192, align 8
  br label %193

193:                                              ; preds = %189, %173
  %194 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %195 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %197, 1
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %201 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store i64 1, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %193
  br label %204

204:                                              ; preds = %203, %163
  %205 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %206 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %207 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %206, i32 0, i32 1
  %208 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %209 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %212 = call i64 @mlx4_alloc_qp_buf(%struct.ibv_context* %205, %struct.TYPE_10__* %207, i32 %210, %struct.mlx4_qp* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %451

215:                                              ; preds = %204
  %216 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %217 = call i32 @mlx4_init_qp_indices(%struct.mlx4_qp* %216)
  %218 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %219 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %222 = call i64 @pthread_spin_init(i32* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %215
  %225 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %226 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 4
  %228 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %229 = call i64 @pthread_spin_init(i32* %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224, %215
  br label %430

232:                                              ; preds = %224
  %233 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %234 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %259

238:                                              ; preds = %232
  %239 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %240 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %239)
  %241 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %242 = call i64* @mlx4_alloc_db(%struct.mlx4_context* %240, i32 %241)
  %243 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %244 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %243, i32 0, i32 4
  store i64* %242, i64** %244, align 8
  %245 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %245, i32 0, i32 4
  %247 = load i64*, i64** %246, align 8
  %248 = icmp ne i64* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %238
  br label %430

250:                                              ; preds = %238
  %251 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %252 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %251, i32 0, i32 4
  %253 = load i64*, i64** %252, align 8
  store i64 0, i64* %253, align 8
  %254 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %255 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %254, i32 0, i32 4
  %256 = load i64*, i64** %255, align 8
  %257 = ptrtoint i64* %256 to i64
  %258 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 0
  store i64 %257, i64* %258, align 8
  br label %261

259:                                              ; preds = %232
  %260 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 0
  store i64 0, i64* %260, align 8
  br label %261

261:                                              ; preds = %259, %250
  %262 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %263 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 1
  store i64 %265, i64* %266, align 8
  %267 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %268 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 2
  store i32 %270, i32* %271, align 8
  %272 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 3
  store i32 0, i32* %272, align 4
  br label %273

273:                                              ; preds = %283, %261
  %274 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %275 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 1, %279
  %281 = icmp sgt i32 %277, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282
  %284 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  br label %273

287:                                              ; preds = %273
  %288 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 6
  store i64 0, i64* %288, align 8
  %289 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @memset(i32 %290, i32 0, i32 4)
  %292 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %293 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %292)
  %294 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %293, i32 0, i32 2
  %295 = call i32 @pthread_mutex_lock(i32* %294)
  %296 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %297 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @MLX4_CREATE_QP_EX2_COMP_MASK, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %287
  %303 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %304 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %305 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %306 = call i32 @mlx4_cmd_create_qp_ex(%struct.ibv_context* %303, %struct.ibv_qp_init_attr_ex* %304, %struct.mlx4_create_qp* %7, %struct.mlx4_qp* %305)
  store i32 %306, i32* %10, align 4
  br label %314

307:                                              ; preds = %287
  %308 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %309 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %310 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %309, i32 0, i32 5
  %311 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %312 = getelementptr inbounds %struct.mlx4_create_qp, %struct.mlx4_create_qp* %7, i32 0, i32 4
  %313 = call i32 @ibv_cmd_create_qp_ex(%struct.ibv_context* %308, %struct.TYPE_12__* %310, i32 4, %struct.ibv_qp_init_attr_ex* %311, i32* %312, i32 40, %struct.ibv_create_qp_resp* %8, i32 4)
  store i32 %313, i32* %10, align 4
  br label %314

314:                                              ; preds = %307, %302
  %315 = load i32, i32* %10, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %411

318:                                              ; preds = %314
  %319 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %320 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %326 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %344

330:                                              ; preds = %324, %318
  %331 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %332 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %331)
  %333 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %334 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %339 = call i32 @mlx4_store_qp(%struct.mlx4_context* %332, i32 %337, %struct.mlx4_qp* %338)
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* %10, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %330
  br label %406

343:                                              ; preds = %330
  br label %344

344:                                              ; preds = %343, %324
  %345 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %346 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %345)
  %347 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %346, i32 0, i32 2
  %348 = call i32 @pthread_mutex_unlock(i32* %347)
  %349 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %350 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %354 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  store i64 %352, i64* %355, align 8
  %356 = trunc i64 %352 to i32
  %357 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %358 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 8
  %360 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %361 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %365 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 2
  store i64 %363, i64* %366, align 8
  %367 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %368 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @IBV_QPT_XRC_RECV, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %380

372:                                              ; preds = %344
  %373 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %374 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %375 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %374, i32 0, i32 1
  %376 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %377 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @mlx4_set_sq_sizes(%struct.mlx4_qp* %373, %struct.TYPE_10__* %375, i32 %378)
  br label %380

380:                                              ; preds = %372, %344
  %381 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %382 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = shl i32 %385, 8
  %387 = call i8* @htobe32(i32 %386)
  %388 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %389 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %388, i32 0, i32 7
  store i8* %387, i8** %389, align 8
  %390 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %391 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %380
  %395 = load i32, i32* @MLX4_WQE_CTRL_CQ_UPDATE, align 4
  %396 = call i8* @htobe32(i32 %395)
  %397 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %398 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %397, i32 0, i32 6
  store i8* %396, i8** %398, align 8
  br label %402

399:                                              ; preds = %380
  %400 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %401 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %400, i32 0, i32 6
  store i8* null, i8** %401, align 8
  br label %402

402:                                              ; preds = %399, %394
  %403 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %404 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  store %struct.ibv_qp* %405, %struct.ibv_qp** %3, align 8
  br label %454

406:                                              ; preds = %342
  %407 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %408 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %407, i32 0, i32 5
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = call i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %409)
  br label %411

411:                                              ; preds = %406, %317
  %412 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %413 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %412)
  %414 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %413, i32 0, i32 2
  %415 = call i32 @pthread_mutex_unlock(i32* %414)
  %416 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %5, align 8
  %417 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %411
  %422 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %423 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %422)
  %424 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %425 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %426 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %425, i32 0, i32 4
  %427 = load i64*, i64** %426, align 8
  %428 = call i32 @mlx4_free_db(%struct.mlx4_context* %423, i32 %424, i64* %427)
  br label %429

429:                                              ; preds = %421, %411
  br label %430

430:                                              ; preds = %429, %249, %231
  %431 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %432 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 2
  %434 = load %struct.mlx4_qp*, %struct.mlx4_qp** %433, align 8
  %435 = call i32 @free(%struct.mlx4_qp* %434)
  %436 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %437 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %447

441:                                              ; preds = %430
  %442 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %443 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 3
  %445 = load %struct.mlx4_qp*, %struct.mlx4_qp** %444, align 8
  %446 = call i32 @free(%struct.mlx4_qp* %445)
  br label %447

447:                                              ; preds = %441, %430
  %448 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %449 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %448, i32 0, i32 1
  %450 = call i32 @mlx4_free_buf(%struct.TYPE_11__* %449)
  br label %451

451:                                              ; preds = %447, %214
  %452 = load %struct.mlx4_qp*, %struct.mlx4_qp** %9, align 8
  %453 = call i32 @free(%struct.mlx4_qp* %452)
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %454

454:                                              ; preds = %451, %402, %101, %96, %87, %79, %53
  %455 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  ret %struct.ibv_qp* %455
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local %struct.mlx4_qp* @calloc(i32, i32) #1

declare dso_local i32 @mlx4_calc_sq_wqe_size(%struct.TYPE_10__*, i32, %struct.mlx4_qp*) #1

declare dso_local i8* @align_queue_size(i32) #1

declare dso_local i64 @mlx4_alloc_qp_buf(%struct.ibv_context*, %struct.TYPE_10__*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_init_qp_indices(%struct.mlx4_qp*) #1

declare dso_local i64 @pthread_spin_init(i32*, i32) #1

declare dso_local i64* @mlx4_alloc_db(%struct.mlx4_context*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mlx4_cmd_create_qp_ex(%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx4_create_qp*, %struct.mlx4_qp*) #1

declare dso_local i32 @ibv_cmd_create_qp_ex(%struct.ibv_context*, %struct.TYPE_12__*, i32, %struct.ibv_qp_init_attr_ex*, i32*, i32, %struct.ibv_create_qp_resp*, i32) #1

declare dso_local i32 @mlx4_store_qp(%struct.mlx4_context*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_set_sq_sizes(%struct.mlx4_qp*, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @ibv_cmd_destroy_qp(%struct.ibv_qp*) #1

declare dso_local i32 @mlx4_free_db(%struct.mlx4_context*, i32, i64*) #1

declare dso_local i32 @free(%struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_free_buf(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
