; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i64, i64, i64, i32 }
%struct.ibv_qp_attr = type { i64, i32 }
%struct.ibv_modify_qp = type { i32 }
%struct.ibv_modify_qp_ex = type { i32 }
%struct.ibv_modify_qp_resp_ex = type { i32 }
%struct.mlx5_qp = type { i32, %struct.TYPE_6__, i64*, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_context = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@IBV_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@IBV_DEVICE_RAW_IP_CSUM = common dso_local global i32 0, align 4
@MLX5_CSUM_SUPPORT_RAW_OVER_ETH = common dso_local global i32 0, align 4
@MLX5_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX5_MODIFY_QP_EX_ATTR_MASK = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QPS_RESET = common dso_local global i64 0, align 8
@MLX5_RCV_DBR = common dso_local global i64 0, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@IBV_QPS_RTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_modify_qp, align 4
  %9 = alloca %struct.ibv_modify_qp_ex, align 4
  %10 = alloca %struct.ibv_modify_qp_resp_ex, align 4
  %11 = alloca %struct.mlx5_qp*, align 8
  %12 = alloca %struct.mlx5_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.ibv_modify_qp* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = bitcast %struct.ibv_modify_qp_ex* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = bitcast %struct.ibv_modify_qp_resp_ex* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %19 = call %struct.mlx5_qp* @to_mqp(%struct.ibv_qp* %18)
  store %struct.mlx5_qp* %19, %struct.mlx5_qp** %11, align 8
  %20 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %21 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx5_context* @to_mctx(i32 %22)
  store %struct.mlx5_context* %23, %struct.mlx5_context** %12, align 8
  %24 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %25 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOSYS, align 4
  store i32 %29, i32* %4, align 4
  br label %218

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IBV_QP_PORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %30
  %36 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %83 [
    i32 128, label %39
  ]

39:                                               ; preds = %35
  %40 = load %struct.mlx5_context*, %struct.mlx5_context** %12, align 8
  %41 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IBV_LINK_LAYER_ETHERNET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %39
  %53 = load %struct.mlx5_context*, %struct.mlx5_context** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IBV_DEVICE_RAW_IP_CSUM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32, i32* @MLX5_CSUM_SUPPORT_RAW_OVER_ETH, align 4
  %61 = load i32, i32* @MLX5_RX_CSUM_VALID, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %64 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.mlx5_context*, %struct.mlx5_context** %12, align 8
  %69 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ibv_is_qpt_supported(i32 %71, i32 128)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.mlx5_context*, %struct.mlx5_context** %12, align 8
  %76 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %80 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %39
  br label %84

83:                                               ; preds = %35
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %30
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MLX5_MODIFY_QP_EX_ATTR_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %92 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ibv_cmd_modify_qp_ex(%struct.ibv_qp* %91, %struct.ibv_qp_attr* %92, i32 %93, %struct.ibv_modify_qp_ex* %9, i32 4, i32 4, %struct.ibv_modify_qp_resp_ex* %10, i32 4, i32 4)
  store i32 %94, i32* %13, align 4
  br label %100

95:                                               ; preds = %85
  %96 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %97 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @ibv_cmd_modify_qp(%struct.ibv_qp* %96, %struct.ibv_qp_attr* %97, i32 %98, %struct.ibv_modify_qp* %8, i32 4)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %177, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IBV_QP_STATE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %177

108:                                              ; preds = %103
  %109 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IBV_QPS_RESET, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %177

114:                                              ; preds = %108
  %115 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %116 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %121 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @to_mcq(i64 %122)
  %124 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %125 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %129 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %134 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32* @to_msrq(i64 %135)
  br label %138

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i32* [ %136, %132 ], [ null, %137 ]
  %140 = call i32 @mlx5_cq_clean(i32 %123, i32 %127, i32* %139)
  br label %141

141:                                              ; preds = %138, %114
  %142 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %143 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %146 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %151 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %156 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @to_mcq(i64 %157)
  %159 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %160 = call %struct.mlx5_qp* @to_mqp(%struct.ibv_qp* %159)
  %161 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mlx5_cq_clean(i32 %158, i32 %163, i32* null)
  br label %165

165:                                              ; preds = %154, %149, %141
  %166 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %167 = call i32 @mlx5_init_qp_indices(%struct.mlx5_qp* %166)
  %168 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %169 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  store i64* %170, i64** %14, align 8
  %171 = load i64*, i64** %14, align 8
  %172 = load i64, i64* @MLX5_RCV_DBR, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 0, i64* %173, align 8
  %174 = load i64*, i64** %14, align 8
  %175 = load i64, i64* @MLX5_SND_DBR, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %165, %108, %103, %100
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %216, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @IBV_QP_STATE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %216

185:                                              ; preds = %180
  %186 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %187 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IBV_QPS_RTR, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %193 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 128
  br i1 %195, label %196, label %216

196:                                              ; preds = %191
  %197 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %198 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = call i32 @mlx5_spin_lock(i32* %199)
  %201 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %202 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 65535
  %206 = call i64 @htobe32(i32 %205)
  %207 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %208 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* @MLX5_RCV_DBR, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  store i64 %206, i64* %211, align 8
  %212 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %213 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = call i32 @mlx5_spin_unlock(i32* %214)
  br label %216

216:                                              ; preds = %196, %191, %185, %180, %177
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %28
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_qp* @to_mqp(%struct.ibv_qp*) #2

declare dso_local %struct.mlx5_context* @to_mctx(i32) #2

declare dso_local i32 @ibv_is_qpt_supported(i32, i32) #2

declare dso_local i32 @ibv_cmd_modify_qp_ex(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_modify_qp_ex*, i32, i32, %struct.ibv_modify_qp_resp_ex*, i32, i32) #2

declare dso_local i32 @ibv_cmd_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_modify_qp*, i32) #2

declare dso_local i32 @mlx5_cq_clean(i32, i32, i32*) #2

declare dso_local i32 @to_mcq(i64) #2

declare dso_local i32* @to_msrq(i64) #2

declare dso_local i32 @mlx5_init_qp_indices(%struct.mlx5_qp*) #2

declare dso_local i32 @mlx5_spin_lock(i32*) #2

declare dso_local i64 @htobe32(i32) #2

declare dso_local i32 @mlx5_spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
