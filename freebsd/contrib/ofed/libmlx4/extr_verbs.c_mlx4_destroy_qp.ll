; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i64, i64, i32, i32, i64 }
%struct.mlx4_qp = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.mlx4_qp*, i64 }
%struct.TYPE_6__ = type { %struct.mlx4_qp*, i64 }
%struct.TYPE_8__ = type { i32 }

@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_destroy_qp(%struct.ibv_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.mlx4_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %3, align 8
  %6 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %7 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %6)
  store %struct.mlx4_qp* %7, %struct.mlx4_qp** %4, align 8
  %8 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %9 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_8__* @to_mctx(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %15 = call i32 @ibv_cmd_destroy_qp(%struct.ibv_qp* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %20 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_8__* @to_mctx(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %144

26:                                               ; preds = %1
  %27 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %28 = call i32 @mlx4_lock_cqs(%struct.ibv_qp* %27)
  %29 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %35 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @to_mcq(i64 %36)
  %38 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %39 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %42 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %47 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @to_msrq(i64 %48)
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32* [ %49, %45 ], [ null, %50 ]
  %53 = call i32 @__mlx4_cq_clean(i32 %37, i32 %40, i32* %52)
  br label %54

54:                                               ; preds = %51, %26
  %55 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %56 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %61 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %64 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %69 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @to_mcq(i64 %70)
  %72 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %73 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @__mlx4_cq_clean(i32 %71, i32 %74, i32* null)
  br label %76

76:                                               ; preds = %67, %59, %54
  %77 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %84 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %82, %76
  %89 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %90 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_8__* @to_mctx(i32 %91)
  %93 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %94 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mlx4_clear_qp(%struct.TYPE_8__* %92, i32 %95)
  br label %97

97:                                               ; preds = %88, %82
  %98 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %99 = call i32 @mlx4_unlock_cqs(%struct.ibv_qp* %98)
  %100 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %101 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_8__* @to_mctx(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = call i32 @pthread_mutex_unlock(i32* %104)
  %106 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %107 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %97
  %112 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  %113 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_8__* @to_mctx(i32 %114)
  %116 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %117 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %118 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @mlx4_free_db(%struct.TYPE_8__* %115, i32 %116, i32 %119)
  %121 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %122 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.mlx4_qp*, %struct.mlx4_qp** %123, align 8
  %125 = call i32 @free(%struct.mlx4_qp* %124)
  br label %126

126:                                              ; preds = %111, %97
  %127 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %128 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %134 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.mlx4_qp*, %struct.mlx4_qp** %135, align 8
  %137 = call i32 @free(%struct.mlx4_qp* %136)
  br label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %140 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %139, i32 0, i32 0
  %141 = call i32 @mlx4_free_buf(i32* %140)
  %142 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %143 = call i32 @free(%struct.mlx4_qp* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %18
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.mlx4_qp* @to_mqp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @to_mctx(i32) #1

declare dso_local i32 @ibv_cmd_destroy_qp(%struct.ibv_qp*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_lock_cqs(%struct.ibv_qp*) #1

declare dso_local i32 @__mlx4_cq_clean(i32, i32, i32*) #1

declare dso_local i32 @to_mcq(i64) #1

declare dso_local i32* @to_msrq(i64) #1

declare dso_local i32 @mlx4_clear_qp(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mlx4_unlock_cqs(%struct.ibv_qp*) #1

declare dso_local i32 @mlx4_free_db(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @free(%struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_free_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
