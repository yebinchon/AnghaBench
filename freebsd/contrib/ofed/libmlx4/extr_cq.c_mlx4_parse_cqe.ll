; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_parse_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_parse_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, %struct.TYPE_6__, %struct.mlx4_cqe* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mlx4_cqe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_qp = type { i32, i64, %struct.mlx4_wq, %struct.mlx4_wq, %struct.TYPE_5__ }
%struct.mlx4_wq = type { i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ibv_wc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.mlx4_srq = type { i32* }
%struct.mlx4_err_cqe = type { i32 }
%struct.mlx4_context = type { i32 }

@MLX4_CQE_QPN_MASK = common dso_local global i32 0, align 4
@MLX4_CQ_FLAGS_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX4_CQE_IS_SEND_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_ERROR = common dso_local global i32 0, align 4
@MLX4_XRC_QPN_BIT = common dso_local global i32 0, align 4
@CQ_POLL_ERR = common dso_local global i32 0, align 4
@CQ_OK = common dso_local global i32 0, align 4
@IBV_WC_SUCCESS = common dso_local global i32 0, align 4
@MLX4_RX_CSUM_VALID = common dso_local global i32 0, align 4
@IBV_WC_RECV_RDMA_WITH_IMM = common dso_local global i8* null, align 8
@IBV_WC_WITH_IMM = common dso_local global i8* null, align 8
@IBV_WC_RECV = common dso_local global i8* null, align 8
@IBV_WC_WITH_INV = common dso_local global i32 0, align 4
@IBV_WC_GRH = common dso_local global i32 0, align 4
@IBV_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@MLX4_CQE_STATUS_IPV4_CSUM_OK = common dso_local global i32 0, align 4
@IBV_WC_IP_CSUM_OK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_cq*, %struct.mlx4_cqe*, %struct.mlx4_qp**, %struct.ibv_wc*, i32)* @mlx4_parse_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_parse_cqe(%struct.mlx4_cq* %0, %struct.mlx4_cqe* %1, %struct.mlx4_qp** %2, %struct.ibv_wc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_cq*, align 8
  %8 = alloca %struct.mlx4_cqe*, align 8
  %9 = alloca %struct.mlx4_qp**, align 8
  %10 = alloca %struct.ibv_wc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_wq*, align 8
  %13 = alloca %struct.mlx4_srq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.mlx4_err_cqe*, align 8
  %19 = alloca %struct.mlx4_context*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %7, align 8
  store %struct.mlx4_cqe* %1, %struct.mlx4_cqe** %8, align 8
  store %struct.mlx4_qp** %2, %struct.mlx4_qp*** %9, align 8
  store %struct.ibv_wc* %3, %struct.ibv_wc** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlx4_context* @to_mctx(i32 %26)
  store %struct.mlx4_context* %27, %struct.mlx4_context** %19, align 8
  %28 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32toh(i32 %30)
  %32 = load i32, i32* @MLX4_CQE_QPN_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %5
  %37 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %38 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %38, i32 0, i32 2
  store %struct.mlx4_cqe* %37, %struct.mlx4_cqe** %39, align 8
  %40 = load i32, i32* @MLX4_CQ_FLAGS_RX_CSUM_VALID, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %50

46:                                               ; preds = %5
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %49 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %21, align 4
  %56 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %57 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @MLX4_CQE_OPCODE_ERROR, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @MLX4_XRC_QPN_BIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %50
  %69 = load i32, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load %struct.mlx4_context*, %struct.mlx4_context** %19, align 8
  %73 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %72, i32 0, i32 0
  %74 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be32toh(i32 %76)
  %78 = load i32, i32* @MLX4_CQE_QPN_MASK, align 4
  %79 = and i32 %77, %78
  %80 = call %struct.mlx4_srq* @mlx4_find_xsrq(i32* %73, i32 %79)
  store %struct.mlx4_srq* %80, %struct.mlx4_srq** %13, align 8
  %81 = load %struct.mlx4_srq*, %struct.mlx4_srq** %13, align 8
  %82 = icmp ne %struct.mlx4_srq* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %84, i32* %6, align 4
  br label %448

85:                                               ; preds = %71
  br label %129

86:                                               ; preds = %68, %50
  %87 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %88 = load %struct.mlx4_qp*, %struct.mlx4_qp** %87, align 8
  %89 = icmp ne %struct.mlx4_qp* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %93 = load %struct.mlx4_qp*, %struct.mlx4_qp** %92, align 8
  %94 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %91, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %90, %86
  %100 = load %struct.mlx4_context*, %struct.mlx4_context** %19, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call %struct.mlx4_qp* @mlx4_find_qp(%struct.mlx4_context* %100, i32 %101)
  %103 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  store %struct.mlx4_qp* %102, %struct.mlx4_qp** %103, align 8
  %104 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %105 = load %struct.mlx4_qp*, %struct.mlx4_qp** %104, align 8
  %106 = icmp ne %struct.mlx4_qp* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %108, i32* %6, align 4
  br label %448

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %90
  %111 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %112 = load %struct.mlx4_qp*, %struct.mlx4_qp** %111, align 8
  %113 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %120 = load %struct.mlx4_qp*, %struct.mlx4_qp** %119, align 8
  %121 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call %struct.mlx4_srq* @to_msrq(i64 %124)
  br label %127

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %118
  %128 = phi %struct.mlx4_srq* [ %125, %118 ], [ null, %126 ]
  store %struct.mlx4_srq* %128, %struct.mlx4_srq** %13, align 8
  br label %129

129:                                              ; preds = %127, %85
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  br label %139

136:                                              ; preds = %129
  %137 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %138 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %137, i32 0, i32 12
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi i32* [ %135, %132 ], [ %138, %136 ]
  store i32* %140, i32** %16, align 8
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %183

143:                                              ; preds = %139
  %144 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %145 = load %struct.mlx4_qp*, %struct.mlx4_qp** %144, align 8
  %146 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %145, i32 0, i32 3
  store %struct.mlx4_wq* %146, %struct.mlx4_wq** %12, align 8
  %147 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %148 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be16toh(i32 %149)
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %17, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %154 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sub i64 %152, %156
  %158 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %159 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = add i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 8
  %164 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %165 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %168 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %171 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = and i32 %169, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %166, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %16, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %180 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  br label %226

183:                                              ; preds = %139
  %184 = load %struct.mlx4_srq*, %struct.mlx4_srq** %13, align 8
  %185 = icmp ne %struct.mlx4_srq* %184, null
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %188 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be16toh(i32 %189)
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %17, align 8
  %192 = load %struct.mlx4_srq*, %struct.mlx4_srq** %13, align 8
  %193 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %17, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %16, align 8
  store i32 %197, i32* %198, align 4
  %199 = load %struct.mlx4_srq*, %struct.mlx4_srq** %13, align 8
  %200 = load i64, i64* %17, align 8
  %201 = call i32 @mlx4_free_srq_wqe(%struct.mlx4_srq* %199, i64 %200)
  br label %225

202:                                              ; preds = %183
  %203 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %204 = load %struct.mlx4_qp*, %struct.mlx4_qp** %203, align 8
  %205 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %204, i32 0, i32 2
  store %struct.mlx4_wq* %205, %struct.mlx4_wq** %12, align 8
  %206 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %207 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %210 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %213 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = and i32 %211, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %208, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %16, align 8
  store i32 %219, i32* %220, align 4
  %221 = load %struct.mlx4_wq*, %struct.mlx4_wq** %12, align 8
  %222 = getelementptr inbounds %struct.mlx4_wq, %struct.mlx4_wq* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %202, %186
  br label %226

226:                                              ; preds = %225, %143
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %231 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  br label %236

233:                                              ; preds = %226
  %234 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %235 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %234, i32 0, i32 1
  br label %236

236:                                              ; preds = %233, %229
  %237 = phi i32* [ %232, %229 ], [ %235, %233 ]
  store i32* %237, i32** %22, align 8
  %238 = load i32, i32* %20, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %242 = bitcast %struct.mlx4_cqe* %241 to %struct.mlx4_err_cqe*
  store %struct.mlx4_err_cqe* %242, %struct.mlx4_err_cqe** %18, align 8
  %243 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %18, align 8
  %244 = call i32 @mlx4_handle_error_cqe(%struct.mlx4_err_cqe* %243)
  %245 = load i32*, i32** %22, align 8
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %240
  %249 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %18, align 8
  %250 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %253 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %252, i32 0, i32 11
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %248, %240
  %255 = load i32, i32* @CQ_OK, align 4
  store i32 %255, i32* %6, align 4
  br label %448

256:                                              ; preds = %236
  %257 = load i32, i32* @IBV_WC_SUCCESS, align 4
  %258 = load i32*, i32** %22, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %284

261:                                              ; preds = %256
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %283, label %264

264:                                              ; preds = %261
  %265 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %266 = load %struct.mlx4_qp*, %struct.mlx4_qp** %265, align 8
  %267 = icmp ne %struct.mlx4_qp* %266, null
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %270 = load %struct.mlx4_qp*, %struct.mlx4_qp** %269, align 8
  %271 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @MLX4_RX_CSUM_VALID, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %268
  %277 = load i32, i32* @MLX4_CQ_FLAGS_RX_CSUM_VALID, align 4
  %278 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %279 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %276, %268, %264
  br label %283

283:                                              ; preds = %282, %261
  br label %446

284:                                              ; preds = %256
  %285 = load i32, i32* %21, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %289 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %290 = call i32 @handle_good_req(%struct.ibv_wc* %288, %struct.mlx4_cqe* %289)
  br label %445

291:                                              ; preds = %284
  %292 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %293 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @be32toh(i32 %294)
  %296 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %297 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %299 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %302 = and i32 %300, %301
  switch i32 %302, label %350 [
    i32 131, label %303
    i32 128, label %316
    i32 130, label %331
    i32 129, label %337
  ]

303:                                              ; preds = %291
  %304 = load i8*, i8** @IBV_WC_RECV_RDMA_WITH_IMM, align 8
  %305 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %306 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %305, i32 0, i32 10
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** @IBV_WC_WITH_IMM, align 8
  %308 = ptrtoint i8* %307 to i32
  %309 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %310 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %312 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %315 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 8
  br label %350

316:                                              ; preds = %291
  %317 = load i8*, i8** @IBV_WC_RECV, align 8
  %318 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %319 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %318, i32 0, i32 10
  store i8* %317, i8** %319, align 8
  %320 = load i32, i32* @IBV_WC_WITH_INV, align 4
  %321 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %322 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %326 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @be32toh(i32 %327)
  %329 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %330 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 8
  br label %350

331:                                              ; preds = %291
  %332 = load i8*, i8** @IBV_WC_RECV, align 8
  %333 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %334 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %333, i32 0, i32 10
  store i8* %332, i8** %334, align 8
  %335 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %336 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %335, i32 0, i32 3
  store i32 0, i32* %336, align 4
  br label %350

337:                                              ; preds = %291
  %338 = load i8*, i8** @IBV_WC_RECV, align 8
  %339 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %340 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %339, i32 0, i32 10
  store i8* %338, i8** %340, align 8
  %341 = load i8*, i8** @IBV_WC_WITH_IMM, align 8
  %342 = ptrtoint i8* %341 to i32
  %343 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %344 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %343, i32 0, i32 3
  store i32 %342, i32* %344, align 4
  %345 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %346 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %349 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %348, i32 0, i32 4
  store i32 %347, i32* %349, align 8
  br label %350

350:                                              ; preds = %291, %337, %331, %316, %303
  %351 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %352 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @be16toh(i32 %353)
  %355 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %356 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  %357 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %358 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @be32toh(i32 %359)
  store i32 %360, i32* %15, align 4
  %361 = load i32, i32* %15, align 4
  %362 = and i32 %361, 16777215
  %363 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %364 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %363, i32 0, i32 6
  store i32 %362, i32* %364, align 8
  %365 = load i32, i32* %15, align 4
  %366 = ashr i32 %365, 24
  %367 = and i32 %366, 127
  %368 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %369 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %368, i32 0, i32 7
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %15, align 4
  %371 = and i32 %370, -2147483648
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %350
  %374 = load i32, i32* @IBV_WC_GRH, align 4
  br label %376

375:                                              ; preds = %350
  br label %376

376:                                              ; preds = %375, %373
  %377 = phi i32 [ %374, %373 ], [ 0, %375 ]
  %378 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %379 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %383 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @be32toh(i32 %384)
  %386 = and i32 %385, 127
  %387 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %388 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %387, i32 0, i32 8
  store i32 %386, i32* %388, align 8
  %389 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %390 = load %struct.mlx4_qp*, %struct.mlx4_qp** %389, align 8
  %391 = icmp ne %struct.mlx4_qp* %390, null
  br i1 %391, label %392, label %407

392:                                              ; preds = %376
  %393 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %394 = load %struct.mlx4_qp*, %struct.mlx4_qp** %393, align 8
  %395 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %407

399:                                              ; preds = %392
  %400 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %401 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @be16toh(i32 %402)
  %404 = ashr i32 %403, 13
  %405 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %406 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %405, i32 0, i32 9
  store i32 %404, i32* %406, align 4
  br label %415

407:                                              ; preds = %392, %376
  %408 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %409 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @be16toh(i32 %410)
  %412 = ashr i32 %411, 12
  %413 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %414 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %413, i32 0, i32 9
  store i32 %412, i32* %414, align 4
  br label %415

415:                                              ; preds = %407, %399
  %416 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %417 = load %struct.mlx4_qp*, %struct.mlx4_qp** %416, align 8
  %418 = icmp ne %struct.mlx4_qp* %417, null
  br i1 %418, label %419, label %444

419:                                              ; preds = %415
  %420 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %9, align 8
  %421 = load %struct.mlx4_qp*, %struct.mlx4_qp** %420, align 8
  %422 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @MLX4_RX_CSUM_VALID, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %444

427:                                              ; preds = %419
  %428 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %429 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @MLX4_CQE_STATUS_IPV4_CSUM_OK, align 4
  %432 = call i32 @htobe32(i32 %431)
  %433 = and i32 %430, %432
  %434 = load i32, i32* @MLX4_CQE_STATUS_IPV4_CSUM_OK, align 4
  %435 = call i32 @htobe32(i32 %434)
  %436 = icmp eq i32 %433, %435
  %437 = zext i1 %436 to i32
  %438 = load i32, i32* @IBV_WC_IP_CSUM_OK_SHIFT, align 4
  %439 = shl i32 %437, %438
  %440 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %441 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 4
  br label %444

444:                                              ; preds = %427, %419, %415
  br label %445

445:                                              ; preds = %444, %287
  br label %446

446:                                              ; preds = %445, %283
  %447 = load i32, i32* @CQ_OK, align 4
  store i32 %447, i32* %6, align 4
  br label %448

448:                                              ; preds = %446, %254, %107, %83
  %449 = load i32, i32* %6, align 4
  ret i32 %449
}

declare dso_local %struct.mlx4_context* @to_mctx(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local %struct.mlx4_srq* @mlx4_find_xsrq(i32*, i32) #1

declare dso_local %struct.mlx4_qp* @mlx4_find_qp(%struct.mlx4_context*, i32) #1

declare dso_local %struct.mlx4_srq* @to_msrq(i64) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @mlx4_free_srq_wqe(%struct.mlx4_srq*, i64) #1

declare dso_local i32 @mlx4_handle_error_cqe(%struct.mlx4_err_cqe*) #1

declare dso_local i32 @handle_good_req(%struct.ibv_wc*, %struct.mlx4_cqe*) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
