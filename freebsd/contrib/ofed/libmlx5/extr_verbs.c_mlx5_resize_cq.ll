; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32, i32 }
%struct.mlx5_cq = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_resize_cq_resp = type { i64, i32, i32, i32 }
%struct.mlx5_resize_cq = type { i64, i32, i32, i32 }
%struct.mlx5_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_resize_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_cq*, align 8
  %7 = alloca %struct.mlx5_resize_cq_resp, align 8
  %8 = alloca %struct.mlx5_resize_cq, align 8
  %9 = alloca %struct.mlx5_context*, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %12 = call %struct.mlx5_cq* @to_mcq(%struct.ibv_cq* %11)
  store %struct.mlx5_cq* %12, %struct.mlx5_cq** %6, align 8
  %13 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %14 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx5_context* @to_mctx(i32 %15)
  store %struct.mlx5_context* %16, %struct.mlx5_context** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %3, align 4
  br label %155

22:                                               ; preds = %2
  %23 = bitcast %struct.mlx5_resize_cq* %8 to %struct.mlx5_resize_cq_resp*
  %24 = call i32 @memset(%struct.mlx5_resize_cq_resp* %23, i32 0, i32 24)
  %25 = call i32 @memset(%struct.mlx5_resize_cq_resp* %7, i32 0, i32 24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 64
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %155

33:                                               ; preds = %22
  %34 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %34, i32 0, i32 2
  %36 = call i32 @mlx5_spin_lock(i32* %35)
  %37 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %43, i32 0, i32 5
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %46, i32 0, i32 8
  %48 = icmp eq %struct.TYPE_5__* %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %50, i32 0, i32 9
  %52 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %52, i32 0, i32 3
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  br label %59

54:                                               ; preds = %33
  %55 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %55, i32 0, i32 8
  %57 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %57, i32 0, i32 3
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @align_queue_size(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %65 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %70, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %71, align 8
  store i32 0, i32* %10, align 4
  br label %150

72:                                               ; preds = %59
  %73 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %80 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mlx5_context*, %struct.mlx5_context** %9, align 8
  %82 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %83 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %87 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %90 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mlx5_alloc_cq_buf(%struct.mlx5_context* %81, %struct.mlx5_cq* %82, %struct.TYPE_5__* %85, i32 %88, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %72
  %96 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %96, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %97, align 8
  %98 = load i32, i32* @ENOMEM, align 4
  store i32 %98, i32* @errno, align 4
  br label %150

99:                                               ; preds = %72
  %100 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %101 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.mlx5_resize_cq, %struct.mlx5_resize_cq* %8, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.mlx5_resize_cq, %struct.mlx5_resize_cq* %8, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 1
  %113 = getelementptr inbounds %struct.mlx5_resize_cq, %struct.mlx5_resize_cq* %8, i32 0, i32 2
  %114 = getelementptr inbounds %struct.mlx5_resize_cq_resp, %struct.mlx5_resize_cq_resp* %7, i32 0, i32 1
  %115 = call i32 @ibv_cmd_resize_cq(%struct.ibv_cq* %110, i32 %112, i32* %113, i32 24, i32* %114, i32 24)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  br label %142

119:                                              ; preds = %99
  %120 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %121 = call i32 @mlx5_cq_resize_copy_cqes(%struct.mlx5_cq* %120)
  %122 = load %struct.mlx5_context*, %struct.mlx5_context** %9, align 8
  %123 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %124 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %123, i32 0, i32 5
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = call i32 @mlx5_free_cq_buf(%struct.mlx5_context* %122, %struct.TYPE_5__* %125)
  %127 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %128 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %131 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %130, i32 0, i32 5
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %135 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %138 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %137, i32 0, i32 2
  %139 = call i32 @mlx5_spin_unlock(i32* %138)
  %140 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %141 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %140, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %141, align 8
  store i32 0, i32* %3, align 4
  br label %155

142:                                              ; preds = %118
  %143 = load %struct.mlx5_context*, %struct.mlx5_context** %9, align 8
  %144 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %145 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = call i32 @mlx5_free_cq_buf(%struct.mlx5_context* %143, %struct.TYPE_5__* %146)
  %148 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %149 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %148, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %149, align 8
  br label %150

150:                                              ; preds = %142, %95, %69
  %151 = load %struct.mlx5_cq*, %struct.mlx5_cq** %6, align 8
  %152 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %151, i32 0, i32 2
  %153 = call i32 @mlx5_spin_unlock(i32* %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %119, %31, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.mlx5_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local i32 @memset(%struct.mlx5_resize_cq_resp*, i32, i32) #1

declare dso_local i32 @mlx5_spin_lock(i32*) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i32 @mlx5_alloc_cq_buf(%struct.mlx5_context*, %struct.mlx5_cq*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ibv_cmd_resize_cq(%struct.ibv_cq*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mlx5_cq_resize_copy_cqes(%struct.mlx5_cq*) #1

declare dso_local i32 @mlx5_free_cq_buf(%struct.mlx5_context*, %struct.TYPE_5__*) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
