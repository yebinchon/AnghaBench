; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.ibv_srq_init_attr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx4_create_srq = type { i64, i64, i32 }
%struct.mlx4_create_srq_resp = type { i32 }
%struct.mlx4_srq = type { i32, %struct.TYPE_5__, %struct.mlx4_srq*, i64*, %struct.TYPE_4__, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ibv_srq }

@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_srq* @mlx4_create_srq(%struct.ibv_pd* %0, %struct.ibv_srq_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_srq*, align 8
  %4 = alloca %struct.ibv_pd*, align 8
  %5 = alloca %struct.ibv_srq_init_attr*, align 8
  %6 = alloca %struct.mlx4_create_srq, align 8
  %7 = alloca %struct.mlx4_create_srq_resp, align 4
  %8 = alloca %struct.mlx4_srq*, align 8
  %9 = alloca i32, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %4, align 8
  store %struct.ibv_srq_init_attr* %1, %struct.ibv_srq_init_attr** %5, align 8
  %10 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %11 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 65536
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %124

22:                                               ; preds = %15
  %23 = call %struct.mlx4_srq* @malloc(i32 64)
  store %struct.mlx4_srq* %23, %struct.mlx4_srq** %8, align 8
  %24 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %25 = icmp ne %struct.mlx4_srq* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %124

27:                                               ; preds = %22
  %28 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %28, i32 0, i32 8
  %30 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %31 = call i64 @pthread_spin_init(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %121

34:                                               ; preds = %27
  %35 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @align_queue_size(i32 %39)
  %41 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %54 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %54, i32 0, i32 0
  %56 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %57 = call i64 @mlx4_alloc_srq_buf(%struct.ibv_pd* %53, %struct.TYPE_6__* %55, %struct.mlx4_srq* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %34
  br label %121

60:                                               ; preds = %34
  %61 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %62 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @to_mctx(i32 %63)
  %65 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %66 = call i64* @mlx4_alloc_db(i32 %64, i32 %65)
  %67 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %67, i32 0, i32 3
  store i64* %66, i64** %68, align 8
  %69 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  br label %113

74:                                               ; preds = %60
  %75 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.mlx4_create_srq, %struct.mlx4_create_srq* %6, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = ptrtoint i64* %85 to i64
  %87 = getelementptr inbounds %struct.mlx4_create_srq, %struct.mlx4_create_srq* %6, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %89 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %90 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_create_srq, %struct.mlx4_create_srq* %6, i32 0, i32 2
  %94 = getelementptr inbounds %struct.mlx4_create_srq_resp, %struct.mlx4_create_srq_resp* %7, i32 0, i32 0
  %95 = call i32 @ibv_cmd_create_srq(%struct.ibv_pd* %88, %struct.ibv_srq* %91, %struct.ibv_srq_init_attr* %92, i32* %93, i32 24, i32* %94, i32 4)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %74
  br label %103

99:                                               ; preds = %74
  %100 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %101 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store %struct.ibv_srq* %102, %struct.ibv_srq** %3, align 8
  br label %124

103:                                              ; preds = %98
  %104 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %105 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @to_mctx(i32 %106)
  %108 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %109 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %110 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @mlx4_free_db(i32 %107, i32 %108, i64* %111)
  br label %113

113:                                              ; preds = %103, %73
  %114 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %115 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %114, i32 0, i32 2
  %116 = load %struct.mlx4_srq*, %struct.mlx4_srq** %115, align 8
  %117 = call i32 @free(%struct.mlx4_srq* %116)
  %118 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %119 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %118, i32 0, i32 1
  %120 = call i32 @mlx4_free_buf(%struct.TYPE_5__* %119)
  br label %121

121:                                              ; preds = %113, %59, %33
  %122 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %123 = call i32 @free(%struct.mlx4_srq* %122)
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %124

124:                                              ; preds = %121, %99, %26, %21
  %125 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  ret %struct.ibv_srq* %125
}

declare dso_local %struct.mlx4_srq* @malloc(i32) #1

declare dso_local i64 @pthread_spin_init(i32*, i32) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i64 @mlx4_alloc_srq_buf(%struct.ibv_pd*, %struct.TYPE_6__*, %struct.mlx4_srq*) #1

declare dso_local i64* @mlx4_alloc_db(i32, i32) #1

declare dso_local i32 @to_mctx(i32) #1

declare dso_local i32 @ibv_cmd_create_srq(%struct.ibv_pd*, %struct.ibv_srq*, %struct.ibv_srq_init_attr*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_db(i32, i32, i64*) #1

declare dso_local i32 @free(%struct.mlx4_srq*) #1

declare dso_local i32 @mlx4_free_buf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
