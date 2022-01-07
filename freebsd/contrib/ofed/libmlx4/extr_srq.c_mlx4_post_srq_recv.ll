; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.ibv_recv_wr = type { i32, %struct.TYPE_2__*, i32, %struct.ibv_recv_wr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx4_srq = type { i32, i64, i64, i32, i32, i8**, i32* }
%struct.mlx4_wqe_srq_next_seg = type { i32 }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i8* }

@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_post_srq_recv(%struct.ibv_srq* %0, %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %2) #0 {
  %4 = alloca %struct.ibv_srq*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_recv_wr**, align 8
  %7 = alloca %struct.mlx4_srq*, align 8
  %8 = alloca %struct.mlx4_wqe_srq_next_seg*, align 8
  %9 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_srq* %0, %struct.ibv_srq** %4, align 8
  store %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr** %2, %struct.ibv_recv_wr*** %6, align 8
  %13 = load %struct.ibv_srq*, %struct.ibv_srq** %4, align 8
  %14 = call %struct.mlx4_srq* @to_msrq(%struct.ibv_srq* %13)
  store %struct.mlx4_srq* %14, %struct.mlx4_srq** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %15, i32 0, i32 4
  %17 = call i32 @pthread_spin_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %145, %3
  %19 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %20 = icmp ne %struct.ibv_recv_wr* %19, null
  br i1 %20, label %21, label %151

21:                                               ; preds = %18
  %22 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  store i32 -1, i32* %10, align 4
  %30 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %31 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %30, %struct.ibv_recv_wr** %31, align 8
  br label %151

32:                                               ; preds = %21
  %33 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %37 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  store i32 -1, i32* %10, align 4
  %41 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %42 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %41, %struct.ibv_recv_wr** %42, align 8
  br label %151

43:                                               ; preds = %32
  %44 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %45 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  %54 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %55 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_srq* %54, i64 %57)
  store %struct.mlx4_wqe_srq_next_seg* %58, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %59 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @be16toh(i32 %61)
  %63 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.mlx4_wqe_srq_next_seg*, %struct.mlx4_wqe_srq_next_seg** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, %struct.mlx4_wqe_srq_next_seg* %65, i64 1
  %67 = bitcast %struct.mlx4_wqe_srq_next_seg* %66 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %67, %struct.mlx4_wqe_data_seg** %9, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %117, %43
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %71 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %68
  %75 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %76 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @htobe32(i32 %82)
  %84 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %84, i64 %86
  %88 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %87, i32 0, i32 2
  store i8* %83, i8** %88, align 8
  %89 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %90 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @htobe32(i32 %96)
  %98 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %98, i64 %100
  %102 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %101, i32 0, i32 1
  store i8* %97, i8** %102, align 8
  %103 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %104 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @htobe64(i32 %110)
  %112 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %112, i64 %114
  %116 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %115, i32 0, i32 0
  store i64 %111, i64* %116, align 8
  br label %117

117:                                              ; preds = %74
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %68

120:                                              ; preds = %68
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %127, i64 %129
  %131 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %130, i32 0, i32 2
  store i8* null, i8** %131, align 8
  %132 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %133 = call i8* @htobe32(i32 %132)
  %134 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %134, i64 %136
  %138 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %137, i32 0, i32 1
  store i8* %133, i8** %138, align 8
  %139 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %139, i64 %141
  %143 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %126, %120
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  %148 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %149 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %148, i32 0, i32 3
  %150 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %149, align 8
  store %struct.ibv_recv_wr* %150, %struct.ibv_recv_wr** %5, align 8
  br label %18

151:                                              ; preds = %40, %29, %18
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %157 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = call i32 (...) @udma_to_device_barrier()
  %161 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %162 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @htobe32(i32 %163)
  %165 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %166 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %165, i32 0, i32 5
  %167 = load i8**, i8*** %166, align 8
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %154, %151
  %169 = load %struct.mlx4_srq*, %struct.mlx4_srq** %7, align 8
  %170 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %169, i32 0, i32 4
  %171 = call i32 @pthread_spin_unlock(i32* %170)
  %172 = load i32, i32* %10, align 4
  ret i32 %172
}

declare dso_local %struct.mlx4_srq* @to_msrq(%struct.ibv_srq*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local %struct.mlx4_wqe_srq_next_seg* @get_wqe(%struct.mlx4_srq*, i64) #1

declare dso_local i64 @be16toh(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i64 @htobe64(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
