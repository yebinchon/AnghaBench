; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c___mlx4_cq_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c___mlx4_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_srq = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_cqe = type { i32, i32, i32, i32 }

@MLX4_CQE_QPN_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_IS_SEND_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_cq_clean(%struct.mlx4_cq* %0, i32 %1, %struct.mlx4_srq* %2) #0 {
  %4 = alloca %struct.mlx4_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_srq*, align 8
  %7 = alloca %struct.mlx4_cqe*, align 8
  %8 = alloca %struct.mlx4_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_srq* %2, %struct.mlx4_srq** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 64
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %12, align 4
  %19 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %40, %3
  %23 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @get_sw_cqe(%struct.mlx4_cq* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %31, %35
  %37 = icmp eq i32 %28, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %22

43:                                               ; preds = %38, %22
  br label %44

44:                                               ; preds = %167, %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %168

52:                                               ; preds = %44
  %53 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %54, %58
  %60 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq* %53, i32 %59)
  store %struct.mlx4_cqe* %60, %struct.mlx4_cqe** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %62, i64 %63
  store %struct.mlx4_cqe* %64, %struct.mlx4_cqe** %7, align 8
  %65 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %66 = icmp ne %struct.mlx4_srq* %65, null
  br i1 %66, label %67, label %100

67:                                               ; preds = %52
  %68 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %74 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32toh(i32 %75)
  %77 = load i32, i32* @MLX4_CQE_QPN_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %72
  %85 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %86 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %93 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %94 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be16toh(i32 %95)
  %97 = call i32 @mlx4_free_srq_wqe(%struct.mlx4_srq* %92, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %167

100:                                              ; preds = %84, %72, %67, %52
  %101 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %102 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be32toh(i32 %103)
  %105 = load i32, i32* @MLX4_CQE_QPN_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %100
  %110 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %111 = icmp ne %struct.mlx4_srq* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %121 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %122 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be16toh(i32 %123)
  %125 = call i32 @mlx4_free_srq_wqe(%struct.mlx4_srq* %120, i32 %124)
  br label %126

126:                                              ; preds = %119, %112, %109
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %166

129:                                              ; preds = %100
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %129
  %133 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %138 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %136, %140
  %142 = call %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq* %133, i32 %141)
  store %struct.mlx4_cqe* %142, %struct.mlx4_cqe** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %144, i64 %145
  store %struct.mlx4_cqe* %146, %struct.mlx4_cqe** %8, align 8
  %147 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %148 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %10, align 4
  %152 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %153 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %154 = call i32 @memcpy(%struct.mlx4_cqe* %152, %struct.mlx4_cqe* %153, i32 16)
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %157 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = or i32 %155, %161
  %163 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %164 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %132, %129
  br label %166

166:                                              ; preds = %165, %126
  br label %167

167:                                              ; preds = %166, %91
  br label %44

168:                                              ; preds = %44
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %174 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = call i32 (...) @udma_to_device_barrier()
  %178 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %179 = call i32 @mlx4_update_cons_index(%struct.mlx4_cq* %178)
  br label %180

180:                                              ; preds = %171, %168
  ret void
}

declare dso_local i64 @get_sw_cqe(%struct.mlx4_cq*, i32) #1

declare dso_local %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq*, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @mlx4_free_srq_wqe(%struct.mlx4_srq*, i32) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_cqe*, %struct.mlx4_cqe*, i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @mlx4_update_cons_index(%struct.mlx4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
