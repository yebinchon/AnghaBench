; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i64, i64, i32, i32, i64, i32 }
%struct.mlx5_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5_context = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_destroy_qp(%struct.ibv_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.mlx5_qp*, align 8
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %3, align 8
  %7 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %8 = call %struct.mlx5_qp* @to_mqp(%struct.ibv_qp* %7)
  store %struct.mlx5_qp* %8, %struct.mlx5_qp** %4, align 8
  %9 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mlx5_context* @to_mctx(i32 %11)
  store %struct.mlx5_context* %12, %struct.mlx5_context** %5, align 8
  %13 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %19 = call i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %151

24:                                               ; preds = %17
  br label %148

25:                                               ; preds = %1
  %26 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %36 = call i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %151

50:                                               ; preds = %34
  %51 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %52 = call i32 @mlx5_lock_cqs(%struct.ibv_qp* %51)
  %53 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %54 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @to_mcq(i64 %55)
  %57 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %62 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %67 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32* @to_msrq(i64 %68)
  br label %71

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32* [ %69, %65 ], [ null, %70 ]
  %73 = call i32 @__mlx5_cq_clean(i32 %56, i32 %60, i32* %72)
  %74 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %75 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %78 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %83 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @to_mcq(i64 %84)
  %86 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %87 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__mlx5_cq_clean(i32 %85, i32 %89, i32* null)
  br label %91

91:                                               ; preds = %81, %71
  %92 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %91
  %97 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %98 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %104 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102, %96
  %109 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %110 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %111 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mlx5_clear_qp(%struct.mlx5_context* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %117 = call i32 @mlx5_unlock_cqs(%struct.ibv_qp* %116)
  %118 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %124 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %123, i32 0, i32 0
  %125 = call i32 @pthread_mutex_unlock(i32* %124)
  br label %140

126:                                              ; preds = %115
  %127 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %128 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @is_xrc_tgt(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %126
  %133 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %134 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %135 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @mlx5_clear_uidx(%struct.mlx5_context* %133, i32 %137)
  br label %139

139:                                              ; preds = %132, %126
  br label %140

140:                                              ; preds = %139, %122
  %141 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %142 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %143 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @mlx5_free_db(%struct.mlx5_context* %141, i32 %144)
  %146 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %147 = call i32 @mlx5_free_qp_buf(%struct.mlx5_qp* %146)
  br label %148

148:                                              ; preds = %140, %24
  %149 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %150 = call i32 @free(%struct.mlx5_qp* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %48, %22
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.mlx5_qp* @to_mqp(%struct.ibv_qp*) #1

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local i32 @ibv_cmd_destroy_qp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_lock_cqs(%struct.ibv_qp*) #1

declare dso_local i32 @__mlx5_cq_clean(i32, i32, i32*) #1

declare dso_local i32 @to_mcq(i64) #1

declare dso_local i32* @to_msrq(i64) #1

declare dso_local i32 @mlx5_clear_qp(%struct.mlx5_context*, i32) #1

declare dso_local i32 @mlx5_unlock_cqs(%struct.ibv_qp*) #1

declare dso_local i32 @is_xrc_tgt(i32) #1

declare dso_local i32 @mlx5_clear_uidx(%struct.mlx5_context*, i32) #1

declare dso_local i32 @mlx5_free_db(%struct.mlx5_context*, i32) #1

declare dso_local i32 @mlx5_free_qp_buf(%struct.mlx5_qp*) #1

declare dso_local i32 @free(%struct.mlx5_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
