; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_alloc_srq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_alloc_srq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_srq_attr = type { i32 }
%struct.mlx4_srq = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_alloc_srq_buf(%struct.ibv_pd* %0, %struct.ibv_srq_attr* %1, %struct.mlx4_srq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_pd*, align 8
  %6 = alloca %struct.ibv_srq_attr*, align 8
  %7 = alloca %struct.mlx4_srq*, align 8
  %8 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %5, align 8
  store %struct.ibv_srq_attr* %1, %struct.ibv_srq_attr** %6, align 8
  store %struct.mlx4_srq* %2, %struct.mlx4_srq** %7, align 8
  %13 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @malloc(i32 %18)
  %20 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %140

27:                                               ; preds = %3
  %28 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %35, i32 0, i32 2
  store i32 5, i32* %36, align 8
  br label %37

37:                                               ; preds = %45, %27
  %38 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %37

50:                                               ; preds = %37
  %51 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %53, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %58, i32 0, i32 5
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.ibv_pd*, %struct.ibv_pd** %5, align 8
  %62 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_5__* @to_mdev(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @mlx4_alloc_buf(%struct.TYPE_6__* %59, i32 %60, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %50
  %72 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @free(i32 %74)
  store i32 -1, i32* %4, align 4
  br label %140

76:                                               ; preds = %50
  %77 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %78 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @memset(i32 %80, i32 0, i32 %81)
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %128, %76
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %86 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %83
  %90 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_srq* %90, i32 %91)
  store %struct.mlx4_wqe_srq_next_seg* %92, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %96 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %94, %98
  %100 = call i32 @htobe16(i32 %99)
  %101 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %102 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %104 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %103, i64 1
  %105 = bitcast %struct.mlx4_wqe_srq_next_seg* %104 to i8*
  %106 = bitcast i8* %105 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %106, %struct.mlx4_wqe_data_seg** %9, align 8
  br label %107

107:                                              ; preds = %124, %89
  %108 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %109 = bitcast %struct.mlx4_wqe_data_seg* %108 to i8*
  %110 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %111 = bitcast %struct.mlx4_wqe_srq_next_seg* %110 to i8*
  %112 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %113 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 1, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %111, i64 %116
  %118 = icmp ult i8* %109, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %121 = call i32 @htobe32(i32 %120)
  %122 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %123 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %119
  %125 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %126 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %125, i32 1
  store %struct.mlx4_wqe_data_seg* %126, %struct.mlx4_wqe_data_seg** %9, align 8
  br label %107

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %83

131:                                              ; preds = %83
  %132 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %133 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %135 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %139 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %131, %71, %26
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @mlx4_alloc_buf(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @to_mdev(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_srq*, i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
