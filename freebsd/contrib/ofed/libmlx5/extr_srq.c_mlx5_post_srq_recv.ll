; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_srq.c_mlx5_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_srq.c_mlx5_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.ibv_recv_wr = type { i32, %struct.TYPE_2__*, i32, %struct.ibv_recv_wr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5_srq = type { i32, i64, i64, i32, i32, i8**, i32* }
%struct.mlx5_wqe_srq_next_seg = type { i32 }
%struct.mlx5_wqe_data_seg = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_post_srq_recv(%struct.ibv_srq* %0, %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %2) #0 {
  %4 = alloca %struct.ibv_srq*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_recv_wr**, align 8
  %7 = alloca %struct.mlx5_srq*, align 8
  %8 = alloca %struct.mlx5_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_srq* %0, %struct.ibv_srq** %4, align 8
  store %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr** %2, %struct.ibv_recv_wr*** %6, align 8
  %13 = load %struct.ibv_srq*, %struct.ibv_srq** %4, align 8
  %14 = call %struct.mlx5_srq* @to_msrq(%struct.ibv_srq* %13)
  store %struct.mlx5_srq* %14, %struct.mlx5_srq** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %15, i32 0, i32 4
  %17 = call i32 @mlx5_spin_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %147, %3
  %19 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %20 = icmp ne %struct.ibv_recv_wr* %19, null
  br i1 %20, label %21, label %153

21:                                               ; preds = %18
  %22 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %32 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %31, %struct.ibv_recv_wr** %32, align 8
  br label %153

33:                                               ; preds = %21
  %34 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %44 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %43, %struct.ibv_recv_wr** %44, align 8
  br label %153

45:                                               ; preds = %33
  %46 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %47 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %50 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %57 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %58 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.mlx5_wqe_srq_next_seg* @get_wqe(%struct.mlx5_srq* %56, i64 %59)
  store %struct.mlx5_wqe_srq_next_seg* %60, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %61 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be16toh(i32 %63)
  %65 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %67, i64 1
  %69 = bitcast %struct.mlx5_wqe_srq_next_seg* %68 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %69, %struct.mlx5_wqe_data_seg** %9, align 8
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %119, %45
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %73 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %70
  %77 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %78 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @htobe32(i32 %84)
  %86 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %86, i64 %88
  %90 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %89, i32 0, i32 2
  store i8* %85, i8** %90, align 8
  %91 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %92 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @htobe32(i32 %98)
  %100 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %100, i64 %102
  %104 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %106 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @htobe64(i32 %112)
  %114 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %114, i64 %116
  %118 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %117, i32 0, i32 0
  store i64 %113, i64* %118, align 8
  br label %119

119:                                              ; preds = %76
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %70

122:                                              ; preds = %70
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %125 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %129, i64 %131
  %133 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %132, i32 0, i32 2
  store i8* null, i8** %133, align 8
  %134 = load i32, i32* @MLX5_INVALID_LKEY, align 4
  %135 = call i8* @htobe32(i32 %134)
  %136 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %136, i64 %138
  %140 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %139, i32 0, i32 1
  store i8* %135, i8** %140, align 8
  %141 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %9, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %141, i64 %143
  %145 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %128, %122
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %151 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %150, i32 0, i32 3
  %152 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %151, align 8
  store %struct.ibv_recv_wr* %152, %struct.ibv_recv_wr** %5, align 8
  br label %18

153:                                              ; preds = %41, %29, %18
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %159 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = call i32 (...) @udma_to_device_barrier()
  %163 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %164 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @htobe32(i32 %165)
  %167 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %168 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %167, i32 0, i32 5
  %169 = load i8**, i8*** %168, align 8
  store i8* %166, i8** %169, align 8
  br label %170

170:                                              ; preds = %156, %153
  %171 = load %struct.mlx5_srq*, %struct.mlx5_srq** %7, align 8
  %172 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %171, i32 0, i32 4
  %173 = call i32 @mlx5_spin_unlock(i32* %172)
  %174 = load i32, i32* %10, align 4
  ret i32 %174
}

declare dso_local %struct.mlx5_srq* @to_msrq(%struct.ibv_srq*) #1

declare dso_local i32 @mlx5_spin_lock(i32*) #1

declare dso_local %struct.mlx5_wqe_srq_next_seg* @get_wqe(%struct.mlx5_srq*, i64) #1

declare dso_local i64 @be16toh(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i64 @htobe64(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
