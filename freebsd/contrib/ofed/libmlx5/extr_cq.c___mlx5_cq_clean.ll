; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c___mlx5_cq_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c___mlx5_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_srq = type { i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5_CQ_FLAGS_DV_OWNED = common dso_local global i32 0, align 4
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx5_cq_clean(%struct.mlx5_cq* %0, i32 %1, %struct.mlx5_srq* %2) #0 {
  %4 = alloca %struct.mlx5_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_srq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_cqe64*, align 8
  %10 = alloca %struct.mlx5_cqe64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5_srq* %2, %struct.mlx5_srq** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %16 = icmp ne %struct.mlx5_cq* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX5_CQ_FLAGS_DV_OWNED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %3
  br label %157

25:                                               ; preds = %17
  %26 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %25
  %30 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @get_sw_cqe(%struct.mlx5_cq* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = icmp eq i32 %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %45, %29
  %51 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_4__* @to_mctx(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %144, %50
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %58
  %67 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %68, %72
  %74 = call i8* @get_cqe(%struct.mlx5_cq* %67, i32 %73)
  store i8* %74, i8** %11, align 8
  %75 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 64
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i8*, i8** %11, align 8
  br label %84

81:                                               ; preds = %66
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr i8, i8* %82, i64 64
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i8* [ %80, %79 ], [ %83, %81 ]
  %86 = bitcast i8* %85 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %86, %struct.mlx5_cqe64** %9, align 8
  %87 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.mlx5_srq*, %struct.mlx5_srq** %6, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @free_res_cqe(%struct.mlx5_cqe64* %87, i32 %88, %struct.mlx5_srq* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %144

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %143

99:                                               ; preds = %96
  %100 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %103, %107
  %109 = call i8* @get_cqe(%struct.mlx5_cq* %100, i32 %108)
  store i8* %109, i8** %12, align 8
  %110 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 64
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i8*, i8** %12, align 8
  br label %119

116:                                              ; preds = %99
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr i8, i8* %117, i64 64
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i8* [ %115, %114 ], [ %118, %116 ]
  %121 = bitcast i8* %120 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %121, %struct.mlx5_cqe64** %10, align 8
  %122 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %10, align 8
  %123 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %13, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %130 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i8* %127, i8* %128, i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %10, align 8
  %135 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = or i32 %133, %139
  %141 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %10, align 8
  %142 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %119, %96
  br label %144

144:                                              ; preds = %143, %93
  br label %58

145:                                              ; preds = %58
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %151 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = call i32 (...) @udma_to_device_barrier()
  %155 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %156 = call i32 @update_cons_index(%struct.mlx5_cq* %155)
  br label %157

157:                                              ; preds = %24, %148, %145
  ret void
}

declare dso_local i64 @get_sw_cqe(%struct.mlx5_cq*, i32) #1

declare dso_local %struct.TYPE_4__* @to_mctx(i32) #1

declare dso_local i8* @get_cqe(%struct.mlx5_cq*, i32) #1

declare dso_local i64 @free_res_cqe(%struct.mlx5_cqe64*, i32, %struct.mlx5_srq*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @update_cons_index(%struct.mlx5_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
