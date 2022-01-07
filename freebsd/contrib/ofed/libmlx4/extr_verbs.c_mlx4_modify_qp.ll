; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i64, i64, i64, i32, i64, i32 }
%struct.ibv_qp_attr = type { i64, i32 }
%struct.ibv_modify_qp = type { i32 }
%struct.ibv_port_attr = type { i32 }
%struct.mlx4_qp = type { i32, i64*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ibv_device_attr = type { i32 }

@IBV_QP_PORT = common dso_local global i32 0, align 4
@IBV_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@IBV_DEVICE_UD_IP_CSUM = common dso_local global i32 0, align 4
@MLX4_CSUM_SUPPORT_UD_OVER_IB = common dso_local global i32 0, align 4
@MLX4_RX_CSUM_VALID = common dso_local global i32 0, align 4
@IBV_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@IBV_DEVICE_RAW_IP_CSUM = common dso_local global i32 0, align 4
@MLX4_CSUM_SUPPORT_RAW_OVER_ETH = common dso_local global i32 0, align 4
@IBV_QPS_RESET = common dso_local global i64 0, align 8
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QPS_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_modify_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_modify_qp, align 4
  %9 = alloca %struct.ibv_port_attr, align 4
  %10 = alloca %struct.mlx4_qp*, align 8
  %11 = alloca %struct.ibv_device_attr, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.ibv_modify_qp* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %15 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %14)
  store %struct.mlx4_qp* %15, %struct.mlx4_qp** %10, align 8
  %16 = call i32 @memset(%struct.ibv_device_attr* %11, i32 0, i32 4)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IBV_QP_PORT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %3
  %22 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ibv_query_port(i32 %24, i32 %27, %struct.ibv_port_attr* %9)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %199

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ibv_query_device(i32 %40, %struct.ibv_device_attr* %11)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %199

46:                                               ; preds = %33
  %47 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %48 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %92 [
    i32 128, label %50
    i32 129, label %71
  ]

50:                                               ; preds = %46
  %51 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %52 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IBV_LINK_LAYER_INFINIBAND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IBV_DEVICE_UD_IP_CSUM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* @MLX4_CSUM_SUPPORT_UD_OVER_IB, align 4
  %64 = load i32, i32* @MLX4_RX_CSUM_VALID, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %67 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %62, %56, %50
  br label %93

71:                                               ; preds = %46
  %72 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %73 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IBV_LINK_LAYER_ETHERNET, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ibv_device_attr, %struct.ibv_device_attr* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IBV_DEVICE_RAW_IP_CSUM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i32, i32* @MLX4_CSUM_SUPPORT_RAW_OVER_ETH, align 4
  %85 = load i32, i32* @MLX4_RX_CSUM_VALID, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.mlx4_qp*, %struct.mlx4_qp** %10, align 8
  %88 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %83, %77, %71
  br label %93

92:                                               ; preds = %46
  br label %93

93:                                               ; preds = %92, %91, %70
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %96 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IBV_QPS_RESET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @IBV_QP_STATE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IBV_QPS_INIT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %113 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %112)
  %114 = call i32 @mlx4_qp_init_sq_ownership(%struct.mlx4_qp* %113)
  br label %115

115:                                              ; preds = %111, %105, %100, %94
  %116 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %117 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @ibv_cmd_modify_qp(%struct.ibv_qp* %116, %struct.ibv_qp_attr* %117, i32 %118, %struct.ibv_modify_qp* %8, i32 4)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %197, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @IBV_QP_STATE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %197

127:                                              ; preds = %122
  %128 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IBV_QPS_RESET, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %197

133:                                              ; preds = %127
  %134 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %135 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %140 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @to_mcq(i64 %141)
  %143 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %144 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %147 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %138
  %151 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %152 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = call i32* @to_msrq(i64 %153)
  br label %156

155:                                              ; preds = %138
  br label %156

156:                                              ; preds = %155, %150
  %157 = phi i32* [ %154, %150 ], [ null, %155 ]
  %158 = call i32 @mlx4_cq_clean(i32 %142, i32 %145, i32* %157)
  br label %159

159:                                              ; preds = %156, %133
  %160 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %161 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %166 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %169 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %174 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @to_mcq(i64 %175)
  %177 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %178 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mlx4_cq_clean(i32 %176, i32 %179, i32* null)
  br label %181

181:                                              ; preds = %172, %164, %159
  %182 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %183 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %182)
  %184 = call i32 @mlx4_init_qp_indices(%struct.mlx4_qp* %183)
  %185 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %186 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %185)
  %187 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %193 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %192)
  %194 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %191, %181
  br label %197

197:                                              ; preds = %196, %127, %122, %115
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %44, %31
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx4_qp* @to_mqp(%struct.ibv_qp*) #2

declare dso_local i32 @memset(%struct.ibv_device_attr*, i32, i32) #2

declare dso_local i32 @ibv_query_port(i32, i32, %struct.ibv_port_attr*) #2

declare dso_local i32 @ibv_query_device(i32, %struct.ibv_device_attr*) #2

declare dso_local i32 @mlx4_qp_init_sq_ownership(%struct.mlx4_qp*) #2

declare dso_local i32 @ibv_cmd_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_modify_qp*, i32) #2

declare dso_local i32 @mlx4_cq_clean(i32, i32, i32*) #2

declare dso_local i32 @to_mcq(i64) #2

declare dso_local i32* @to_msrq(i64) #2

declare dso_local i32 @mlx4_init_qp_indices(%struct.mlx4_qp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
