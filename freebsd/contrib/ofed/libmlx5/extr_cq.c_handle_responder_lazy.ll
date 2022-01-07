; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_responder_lazy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_responder_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_cqe64 = type { i32, i32, i32 }
%struct.mlx5_resource = type { i64 }
%struct.mlx5_srq = type { i32* }
%struct.mlx5_wq = type { i32, i32, i32* }
%struct.mlx5_qp = type { i32, %struct.mlx5_wq }
%struct.TYPE_4__ = type { %struct.mlx5_wq }

@IBV_WC_SUCCESS = common dso_local global i32 0, align 4
@MLX5_INLINE_SCATTER_32 = common dso_local global i32 0, align 4
@MLX5_INLINE_SCATTER_64 = common dso_local global i32 0, align 4
@MLX5_RSC_TYPE_QP = common dso_local global i64 0, align 8
@MLX5_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX5_CQ_FLAGS_RX_CSUM_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_cq*, %struct.mlx5_cqe64*, %struct.mlx5_resource*, %struct.mlx5_srq*)* @handle_responder_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_responder_lazy(%struct.mlx5_cq* %0, %struct.mlx5_cqe64* %1, %struct.mlx5_resource* %2, %struct.mlx5_srq* %3) #0 {
  %5 = alloca %struct.mlx5_cq*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca %struct.mlx5_resource*, align 8
  %8 = alloca %struct.mlx5_srq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5_wq*, align 8
  %11 = alloca %struct.mlx5_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %5, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %6, align 8
  store %struct.mlx5_resource* %2, %struct.mlx5_resource** %7, align 8
  store %struct.mlx5_srq* %3, %struct.mlx5_srq** %8, align 8
  %13 = load %struct.mlx5_resource*, %struct.mlx5_resource** %7, align 8
  %14 = call %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource* %13)
  store %struct.mlx5_qp* %14, %struct.mlx5_qp** %11, align 8
  %15 = load i32, i32* @IBV_WC_SUCCESS, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %17 = icmp ne %struct.mlx5_srq* %16, null
  br i1 %17, label %18, label %69

18:                                               ; preds = %4
  %19 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be16toh(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %24 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @mlx5_free_srq_wqe(%struct.mlx5_srq* %32, i64 %33)
  %35 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MLX5_INLINE_SCATTER_32, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %18
  %42 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %45 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32toh(i32 %47)
  %49 = call i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq* %42, i64 %43, %struct.mlx5_cqe64* %44, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %68

50:                                               ; preds = %18
  %51 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX5_INLINE_SCATTER_64, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %60, i64 -1
  %62 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32toh(i32 %64)
  %66 = call i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq* %58, i64 %59, %struct.mlx5_cqe64* %61, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %57, %50
  br label %68

68:                                               ; preds = %67, %41
  br label %155

69:                                               ; preds = %4
  %70 = load %struct.mlx5_resource*, %struct.mlx5_resource** %7, align 8
  %71 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MLX5_RSC_TYPE_QP, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %80 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %79, i32 0, i32 1
  store %struct.mlx5_wq* %80, %struct.mlx5_wq** %10, align 8
  %81 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %82 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MLX5_RX_CSUM_VALID, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* @MLX5_CQ_FLAGS_RX_CSUM_VALID, align 4
  %89 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %78
  br label %98

94:                                               ; preds = %69
  %95 = load %struct.mlx5_resource*, %struct.mlx5_resource** %7, align 8
  %96 = call %struct.TYPE_4__* @rsc_to_mrwq(%struct.mlx5_resource* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store %struct.mlx5_wq* %97, %struct.mlx5_wq** %10, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.mlx5_wq*, %struct.mlx5_wq** %10, align 8
  %100 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mlx5_wq*, %struct.mlx5_wq** %10, align 8
  %103 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = and i32 %101, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %9, align 8
  %108 = load %struct.mlx5_wq*, %struct.mlx5_wq** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.mlx5_wq*, %struct.mlx5_wq** %10, align 8
  %118 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %122 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MLX5_INLINE_SCATTER_32, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %98
  %128 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %131 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %132 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be32toh(i32 %133)
  %135 = call i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp* %128, i64 %129, %struct.mlx5_cqe64* %130, i32 %134)
  store i32 %135, i32* %12, align 4
  br label %154

136:                                              ; preds = %98
  %137 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %138 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MLX5_INLINE_SCATTER_64, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %147 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %146, i64 -1
  %148 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %149 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be32toh(i32 %150)
  %152 = call i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp* %144, i64 %145, %struct.mlx5_cqe64* %147, i32 %151)
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %143, %136
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %154, %68
  %156 = load i32, i32* %12, align 4
  ret i32 %156
}

declare dso_local %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource*) #1

declare dso_local i64 @be16toh(i32) #1

declare dso_local i32 @mlx5_free_srq_wqe(%struct.mlx5_srq*, i64) #1

declare dso_local i32 @mlx5_copy_to_recv_srq(%struct.mlx5_srq*, i64, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_4__* @rsc_to_mrwq(%struct.mlx5_resource*) #1

declare dso_local i32 @mlx5_copy_to_recv_wqe(%struct.mlx5_qp*, i64, %struct.mlx5_cqe64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
