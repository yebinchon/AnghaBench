; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_responder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wc = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.mlx5_cqe64 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_resource = type { i64 }
%struct.mlx5_srq = type { i32* }
%struct.mlx5_wq = type { i32, i32, i32* }
%struct.mlx5_qp = type { i32, %struct.mlx5_wq }
%struct.TYPE_2__ = type { %struct.mlx5_wq }

@MLX5_INLINE_SCATTER_32 = common dso_local global i32 0, align 4
@MLX5_INLINE_SCATTER_64 = common dso_local global i32 0, align 4
@MLX5_RSC_TYPE_QP = common dso_local global i64 0, align 8
@MLX5_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX5_CQE_L4_OK = common dso_local global i32 0, align 4
@MLX5_CQE_L3_OK = common dso_local global i32 0, align 4
@MLX5_CQE_L3_HDR_TYPE_IPV4 = common dso_local global i64 0, align 8
@IBV_WC_IP_CSUM_OK_SHIFT = common dso_local global i32 0, align 4
@IBV_WC_RECV_RDMA_WITH_IMM = common dso_local global i8* null, align 8
@IBV_WC_WITH_IMM = common dso_local global i32 0, align 4
@IBV_WC_RECV = common dso_local global i8* null, align 8
@IBV_WC_WITH_INV = common dso_local global i32 0, align 4
@IBV_WC_GRH = common dso_local global i32 0, align 4
@IBV_WC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_wc*, %struct.mlx5_cqe64*, %struct.mlx5_resource*, %struct.mlx5_srq*)* @handle_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_responder(%struct.ibv_wc* %0, %struct.mlx5_cqe64* %1, %struct.mlx5_resource* %2, %struct.mlx5_srq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_wc*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  %8 = alloca %struct.mlx5_resource*, align 8
  %9 = alloca %struct.mlx5_srq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlx5_wq*, align 8
  %12 = alloca %struct.mlx5_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ibv_wc* %0, %struct.ibv_wc** %6, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %7, align 8
  store %struct.mlx5_resource* %2, %struct.mlx5_resource** %8, align 8
  store %struct.mlx5_srq* %3, %struct.mlx5_srq** %9, align 8
  %15 = load %struct.mlx5_resource*, %struct.mlx5_resource** %8, align 8
  %16 = call %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource* %15)
  store %struct.mlx5_qp* %16, %struct.mlx5_qp** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32toh(i32 %19)
  %21 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %22 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mlx5_srq*, %struct.mlx5_srq** %9, align 8
  %24 = icmp ne %struct.mlx5_srq* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %4
  %26 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @be16toh(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load %struct.mlx5_srq*, %struct.mlx5_srq** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %38 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlx5_srq*, %struct.mlx5_srq** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @mlx5_free_srq_wqe(%struct.mlx5_srq* %39, i64 %40)
  %42 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MLX5_INLINE_SCATTER_32, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %25
  %49 = load %struct.mlx5_srq*, %struct.mlx5_srq** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %52 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %53 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq* %49, i64 %50, %struct.mlx5_cqe64* %51, i32 %54)
  store i32 %55, i32* %14, align 4
  br label %73

56:                                               ; preds = %25
  %57 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %58 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MLX5_INLINE_SCATTER_64, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.mlx5_srq*, %struct.mlx5_srq** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %66, i64 -1
  %68 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %69 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq* %64, i64 %65, %struct.mlx5_cqe64* %67, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72, %48
  br label %183

74:                                               ; preds = %4
  %75 = load %struct.mlx5_resource*, %struct.mlx5_resource** %8, align 8
  %76 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MLX5_RSC_TYPE_QP, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %74
  %84 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %85 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %84, i32 0, i32 1
  store %struct.mlx5_wq* %85, %struct.mlx5_wq** %11, align 8
  %86 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %87 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MLX5_RX_CSUM_VALID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %83
  %93 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %94 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MLX5_CQE_L4_OK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %103 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MLX5_CQE_L3_OK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = and i32 %101, %110
  %112 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %113 = call i64 @get_cqe_l3_hdr_type(%struct.mlx5_cqe64* %112)
  %114 = load i64, i64* @MLX5_CQE_L3_HDR_TYPE_IPV4, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = and i32 %111, %116
  %118 = load i32, i32* @IBV_WC_IP_CSUM_OK_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %121 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %92, %83
  br label %129

125:                                              ; preds = %74
  %126 = load %struct.mlx5_resource*, %struct.mlx5_resource** %8, align 8
  %127 = call %struct.TYPE_2__* @rsc_to_mrwq(%struct.mlx5_resource* %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store %struct.mlx5_wq* %128, %struct.mlx5_wq** %11, align 8
  br label %129

129:                                              ; preds = %125, %124
  %130 = load %struct.mlx5_wq*, %struct.mlx5_wq** %11, align 8
  %131 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mlx5_wq*, %struct.mlx5_wq** %11, align 8
  %134 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %132, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %10, align 8
  %139 = load %struct.mlx5_wq*, %struct.mlx5_wq** %11, align 8
  %140 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %146 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 8
  %147 = load %struct.mlx5_wq*, %struct.mlx5_wq** %11, align 8
  %148 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %152 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MLX5_INLINE_SCATTER_32, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %129
  %158 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %161 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %162 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp* %158, i64 %159, %struct.mlx5_cqe64* %160, i32 %163)
  store i32 %164, i32* %14, align 4
  br label %182

165:                                              ; preds = %129
  %166 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %167 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MLX5_INLINE_SCATTER_64, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %176 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %175, i64 -1
  %177 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %178 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp* %173, i64 %174, %struct.mlx5_cqe64* %176, i32 %179)
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %172, %165
  br label %182

182:                                              ; preds = %181, %157
  br label %183

183:                                              ; preds = %182, %73
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %5, align 4
  br label %293

188:                                              ; preds = %183
  %189 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %190 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 4
  switch i32 %192, label %240 [
    i32 128, label %193
    i32 131, label %207
    i32 130, label %211
    i32 129, label %225
  ]

193:                                              ; preds = %188
  %194 = load i8*, i8** @IBV_WC_RECV_RDMA_WITH_IMM, align 8
  %195 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %196 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %195, i32 0, i32 8
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %198 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %199 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %203 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %206 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  br label %240

207:                                              ; preds = %188
  %208 = load i8*, i8** @IBV_WC_RECV, align 8
  %209 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %210 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  br label %240

211:                                              ; preds = %188
  %212 = load i8*, i8** @IBV_WC_RECV, align 8
  %213 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %214 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %213, i32 0, i32 8
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %216 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %217 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %221 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %224 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  br label %240

225:                                              ; preds = %188
  %226 = load i8*, i8** @IBV_WC_RECV, align 8
  %227 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %228 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %227, i32 0, i32 8
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* @IBV_WC_WITH_INV, align 4
  %230 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %231 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %235 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @be32toh(i32 %236)
  %238 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %239 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %188, %225, %211, %207, %193
  %241 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %242 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @be16toh(i32 %243)
  %245 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %246 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %245, i32 0, i32 7
  store i8* %244, i8** %246, align 8
  %247 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %248 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @be32toh(i32 %249)
  %251 = ashr i32 %250, 24
  %252 = and i32 %251, 15
  %253 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %254 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %256 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @be32toh(i32 %257)
  %259 = and i32 %258, 16777215
  %260 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %261 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 8
  %262 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %263 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 127
  %266 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %267 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %269 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @be32toh(i32 %270)
  %272 = ashr i32 %271, 28
  %273 = and i32 %272, 3
  store i32 %273, i32* %13, align 4
  %274 = load i32, i32* %13, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %240
  %277 = load i32, i32* @IBV_WC_GRH, align 4
  br label %279

278:                                              ; preds = %240
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %282 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %286 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @be32toh(i32 %287)
  %289 = and i32 %288, 65535
  %290 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %291 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %290, i32 0, i32 6
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* @IBV_WC_SUCCESS, align 4
  store i32 %292, i32* %5, align 4
  br label %293

293:                                              ; preds = %279, %186
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i8* @be16toh(i32) #1

declare dso_local i32 @mlx5_free_srq_wqe(%struct.mlx5_srq*, i64) #1

declare dso_local i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq*, i64, %struct.mlx5_cqe64*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @get_cqe_l3_hdr_type(%struct.mlx5_cqe64*) #1

declare dso_local %struct.TYPE_2__* @rsc_to_mrwq(%struct.mlx5_resource*) #1

declare dso_local i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp*, i64, %struct.mlx5_cqe64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
