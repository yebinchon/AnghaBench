; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_recv_wr = type { i32, i32, i64, %struct.ibv_recv_wr* }
%struct.mlx4_qp = type { %struct.TYPE_2__, i8** }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_post_recv(%struct.ibv_qp* %0, %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %2) #0 {
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_recv_wr**, align 8
  %7 = alloca %struct.mlx4_qp*, align 8
  %8 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %4, align 8
  store %struct.ibv_recv_wr* %1, %struct.ibv_recv_wr** %5, align 8
  store %struct.ibv_recv_wr** %2, %struct.ibv_recv_wr*** %6, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %14 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %13)
  store %struct.mlx4_qp* %14, %struct.mlx4_qp** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = call i32 @pthread_spin_lock(i32* %17)
  %19 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %22, %27
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %128, %3
  %30 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %31 = icmp ne %struct.ibv_recv_wr* %30, null
  br i1 %31, label %32, label %134

32:                                               ; preds = %29
  %33 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %33, i32 0, i32 0
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %37 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_mcq(i32 %38)
  %40 = call i64 @wq_overflow(%struct.TYPE_2__* %34, i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %45 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %44, %struct.ibv_recv_wr** %45, align 8
  br label %135

46:                                               ; preds = %32
  %47 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %48 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %58 = load %struct.ibv_recv_wr**, %struct.ibv_recv_wr*** %6, align 8
  store %struct.ibv_recv_wr* %57, %struct.ibv_recv_wr** %58, align 8
  br label %135

59:                                               ; preds = %46
  %60 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_qp* %60, i32 %61)
  store %struct.mlx4_wqe_data_seg* %62, %struct.mlx4_wqe_data_seg** %8, align 8
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %81, %59
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %66 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %70, i64 %72
  %74 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %75 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @__set_data_seg(%struct.mlx4_wqe_data_seg* %73, i64 %79)
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %87 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %92, i64 %94
  %96 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %98 = call i8* @htobe32(i32 %97)
  %99 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %99, i64 %101
  %103 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %102, i32 0, i32 1
  store i8* %98, i8** %103, align 8
  %104 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %8, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %104, i64 %106
  %108 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %91, %84
  %110 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %111 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  %122 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = and i32 %121, %126
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %109
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %5, align 8
  %132 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %131, i32 0, i32 3
  %133 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %132, align 8
  store %struct.ibv_recv_wr* %133, %struct.ibv_recv_wr** %5, align 8
  br label %29

134:                                              ; preds = %29
  br label %135

135:                                              ; preds = %134, %55, %42
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %141 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 8
  %145 = call i32 (...) @udma_to_device_barrier()
  %146 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %147 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 65535
  %151 = call i8* @htobe32(i32 %150)
  %152 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %153 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  store i8* %151, i8** %154, align 8
  br label %155

155:                                              ; preds = %138, %135
  %156 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %157 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = call i32 @pthread_spin_unlock(i32* %158)
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local %struct.mlx4_qp* @to_mqp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @wq_overflow(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @to_mcq(i32) #1

declare dso_local %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_qp*, i32) #1

declare dso_local i32 @__set_data_seg(%struct.mlx4_wqe_data_seg*, i64) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
